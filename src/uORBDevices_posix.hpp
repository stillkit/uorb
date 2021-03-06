/****************************************************************************
 *
 *   Copyright (c) 2012-2015 PX4 Development Team. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

#ifndef _uORBDevices_posix_hpp_
#define _uORBDevices_posix_hpp_

#include <stdint.h>
#include <string>
#include <map>
#include <semaphore.h>
#include "uORBCommon.hpp"
#include "px4_defines.h"
#include "drv_hrt.h"


namespace uORB
{
class DeviceNode;
class DeviceMaster;
class Manager;
}

/**
 * @class Smart locking object that uses a semaphore. It automatically
 * takes the lock when created and releases the lock when the object goes out of
 * scope. Use like this:
 *
 *   px4_sem_t my_lock;
 *   int ret = px4_sem_init(&my_lock, 0, 1);
 *   ...
 *
 *   {
 *       SmartLock smart_lock(my_lock);
 *       //critical section start
 *       ...
 *       //critical section end
 *   }
 */
class SmartLock
{
public:
	SmartLock(sem_t &sem) : _sem(sem) { do {} while (sem_wait(&_sem) != 0); }
	~SmartLock() { sem_post(&_sem); }
private:
	sem_t &_sem;
};

class uORB::DeviceNode : public device::VDev
{
public:
	DeviceNode(const struct orb_metadata *meta, const char *name, const char *path,
		   int priority, unsigned int queue_size = 1);
	~DeviceNode();

	virtual int   open(device::file_t *filp);
	virtual int   close(device::file_t *filp);
	virtual ssize_t   read(device::file_t *filp, char *buffer, size_t buflen);
	virtual ssize_t   write(device::file_t *filp, const char *buffer, size_t buflen);
	virtual int   ioctl(device::file_t *filp, int cmd, unsigned long arg);

	static ssize_t    publish(const orb_metadata *meta, orb_advert_t handle, const void *data);

	static int        unadvertise(orb_advert_t handle);

	/**
	 * processes a request for add subscription from remote
	 * @param rateInHz
	 *   Specifies the desired rate for the message.
	 * @return
	 *   0 = success
	 *   otherwise failure.
	 */
	int16_t process_add_subscription(int32_t rateInHz);

	/**
	 * processes a request to remove a subscription from remote.
	 */
	int16_t process_remove_subscription();

	/**
	 * processed the received data message from remote.
	 */
	int16_t process_received_message(int32_t length, uint8_t *data);

	/**
	  * Add the subscriber to the node's list of subscriber.  If there is
	  * remote proxy to which this subscription needs to be sent, it will
	  * done via uORBCommunicator::IChannel interface.
	  * @param sd
	  *   the subscriber to be added.
	  */
	void add_internal_subscriber();

	/**
	 * Removes the subscriber from the list.  Also notifies the remote
	 * if there a uORBCommunicator::IChannel instance.
	 * @param sd
	 *   the Subscriber to be removed.
	 */
	void remove_internal_subscriber();

	/**
	 * Return true if this topic has been published.
	 *
	 * This is used in the case of multi_pub/sub to check if it's valid to advertise
	 * and publish to this node or if another node should be tried. */
	bool is_published();

	/**
	 * Try to change the size of the queue. This can only be done as long as nobody published yet.
	 * This is the case, for example when orb_subscribe was called before an orb_advertise.
	 * The queue size can only be increased.
	 * @param queue_size new size of the queue
	 * @return PX4_OK if queue size successfully set
	 */
	int update_queue_size(unsigned int queue_size);

	/**
	 * Print statistics (nr of lost messages)
	 * @param reset if true, reset statistics afterwards
	 * @return true if printed something, false otherwise (if no lost messages)
	 */
	bool print_statistics(bool reset);

protected:
	virtual pollevent_t poll_state(device::file_t *filp);
	virtual void    poll_notify_one(pollfd_struct_t *fds, pollevent_t events);

private:
	struct UpdateIntervalData {
		unsigned  interval; /**< if nonzero minimum interval between updates */
		uint64_t last_update; /**< time at which the last update was provided, used when update_interval is nonzero */
		struct hrt_call update_call;  /**< deferred wakeup call if update_period is nonzero */
	};
	struct SubscriberData {
		~SubscriberData() { if (update_interval) { delete(update_interval); } }

		unsigned  generation; /**< last generation the subscriber has seen */
		int   flags; /**< lowest 8 bits: priority of publisher, 9. bit: update_reported bit */
		UpdateIntervalData *update_interval; /**< if null, no update interval */

		int priority() const { return flags & 0xff; }
		void set_priority(uint8_t prio) { flags = (flags & ~0xff) | prio; }

		bool update_reported() const { return flags & (1 << 8); }
		void set_update_reported(bool update_reported_flag) { flags = (flags & ~(1 << 8)) | (((int)update_reported_flag) << 8); }
	};

	const struct orb_metadata *_meta; /**< object metadata information */
	uint8_t     *_data;   /**< allocated object buffer */
	hrt_abstime   _last_update; /**< time the object was last updated */
	volatile unsigned   _generation;  /**< object generation count */
	unsigned long     _publisher; /**< if nonzero, current publisher. Only used inside the advertise call.
					We allow one publisher to have an open file descriptor at the same time. */
	const int   _priority;  /**< priority of topic */
	bool _published;  /**< has ever data been published */
	unsigned int _queue_size; /**< maximum number of elements in the queue */

	static SubscriberData    *filp_to_sd(device::file_t *filp);

	int32_t _subscriber_count;

	//statistics
	uint32_t _lost_messages = 0; ///< nr of lost messages for all subscribers. If two subscribers lose the same
	///message, it is counted as two.

	/**
	 * Perform a deferred update for a rate-limited subscriber.
	 */
	void      update_deferred();

	/**
	 * Bridge from hrt_call to update_deferred
	 *
	 * void *arg    ORBDevNode pointer for which the deferred update is performed.
	 */
	static void   update_deferred_trampoline(void *arg);

	/**
	 * Check whether a topic appears updated to a subscriber.
	 *
	 * Lock must already be held when calling this.
	 *
	 * @param sd    The subscriber for whom to check.
	 * @return    True if the topic should appear updated to the subscriber
	 */
	bool      appears_updated(SubscriberData *sd);


	// disable copy and assignment operators
	DeviceNode(const DeviceNode &);
	DeviceNode &operator=(const DeviceNode &);
};

/**
 * Master control device for ObjDev.
 *
 * Used primarily to create new objects via the ORBIOCCREATE
 * ioctl.
 */
class uORB::DeviceMaster : public device::VDev
{
public:
	virtual int   ioctl(device::file_t *filp, int cmd, unsigned long arg);

	/**
	 * Public interface for getDeviceNodeLocked(). Takes care of synchronization.
	 * @return node if exists, nullptr otherwise
	 */
	uORB::DeviceNode *getDeviceNode(const char *node_name);

	/**
	 * Print statistics for each existing topic.
	 * @param reset if true, reset statistics afterwards
	 */
	void printStatistics(bool reset);

private:
	// Private constructor, uORB::Manager takes care of its creation
	DeviceMaster(Flavor f);
	virtual ~DeviceMaster();

	friend class uORB::Manager;

	/**
	 * Find a node give its name.
	 * _lock must already be held when calling this.
	 * @return node if exists, nullptr otherwise
	 */
	uORB::DeviceNode *getDeviceNodeLocked(const char *node_name);

	const Flavor      _flavor;
	std::map<std::string, uORB::DeviceNode *> _node_map;
	hrt_abstime       _last_statistics_output;
};

#endif /* _uORBDeviceNode_posix.hpp */
