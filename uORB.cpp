/**
 * @file uORB.cpp
 * A lightweight object broker.
 */

#include "uORB.h"
#include "uORBManager.hpp"
#include "uORBCommon.hpp"

orb_advert_t orb_advertise(const struct orb_metadata *meta, const void *data)
{
	return uORB::Manager::get_instance()->orb_advertise(meta, data);
}

orb_advert_t orb_advertise_queue(const struct orb_metadata *meta, const void *data, unsigned int queue_size)
{
	return uORB::Manager::get_instance()->orb_advertise(meta, data, queue_size);
}

orb_advert_t orb_advertise_multi(const struct orb_metadata *meta, const void *data, int *instance,
				 int priority)
{
	return uORB::Manager::get_instance()->orb_advertise_multi(meta, data, instance, priority);
}

orb_advert_t orb_advertise_multi_queue(const struct orb_metadata *meta, const void *data, int *instance,
				       int priority, unsigned int queue_size)
{
	return uORB::Manager::get_instance()->orb_advertise_multi(meta, data, instance, priority, queue_size);
}

int orb_unadvertise(orb_advert_t handle)
{
	return uORB::Manager::get_instance()->orb_unadvertise(handle);
}

int orb_publish_auto(const struct orb_metadata *meta, orb_advert_t *handle, const void *data, int *instance,
		     int priority)
{
	if (*handle == nullptr) {
		*handle = orb_advertise_multi(meta, data, instance, priority);

		if (*handle != nullptr) {
			return 0;
		}

	} else {
		return orb_publish(meta, *handle, data);
	}

	return -1;
}

int  orb_publish(const struct orb_metadata *meta, orb_advert_t handle, const void *data)
{
	return uORB::Manager::get_instance()->orb_publish(meta, handle, data);
}

int  orb_subscribe(const struct orb_metadata *meta)
{
	return uORB::Manager::get_instance()->orb_subscribe(meta);
}

int  orb_subscribe_multi(const struct orb_metadata *meta, unsigned instance)
{
	return uORB::Manager::get_instance()->orb_subscribe_multi(meta, instance);
}

int  orb_unsubscribe(int handle)
{
	return uORB::Manager::get_instance()->orb_unsubscribe(handle);
}

int  orb_copy(const struct orb_metadata *meta, int handle, void *buffer)
{
	return uORB::Manager::get_instance()->orb_copy(meta, handle, buffer);
}

int  orb_check(int handle, bool *updated)
{
	return uORB::Manager::get_instance()->orb_check(handle, updated);
}

int  orb_stat(int handle, uint64_t *time)
{
	return uORB::Manager::get_instance()->orb_stat(handle, time);
}

int  orb_exists(const struct orb_metadata *meta, int instance)
{
	return uORB::Manager::get_instance()->orb_exists(meta, instance);
}

int  orb_group_count(const struct orb_metadata *meta)
{
	unsigned instance = 0;

	while (uORB::Manager::get_instance()->orb_exists(meta, instance) == OK) {
		++instance;
	};

	return instance;
}

int  orb_priority(int handle, int32_t *priority)
{
	return uORB::Manager::get_instance()->orb_priority(handle, priority);
}

int orb_set_interval(int handle, unsigned interval)
{
	return uORB::Manager::get_instance()->orb_set_interval(handle, interval);
}

int orb_get_interval(int handle, unsigned *interval)
{
	return uORB::Manager::get_instance()->orb_get_interval(handle, interval);
}
