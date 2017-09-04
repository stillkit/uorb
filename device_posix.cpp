/**
 * @file device.cpp
 *
 * Fundamental driver base class for the virtual device framework.
 */


#include "vdev.h"
#include <semaphore.h>
#include <stdio.h>
#include <unistd.h>
#include <sys/stat.h>

namespace device
{

Device::Device(const char *name) :
	// public
	// protected
	_name(name),
	_debug_enabled(false)
{
	int ret = sem_init(&_lock, 0, 1);

	if (ret != 0) {
		PX4_WARN("SEM INIT FAIL: ret %d, %s", ret, strerror(errno));
	}

	/* setup a default device ID. When bus_type is UNKNOWN the
	   other fields are invalid */
	_device_id.devid = 0;
	_device_id.devid_s.bus_type = DeviceBusType_UNKNOWN;
	_device_id.devid_s.bus = 0;
	_device_id.devid_s.address = 0;
	_device_id.devid_s.devtype = 0;
}

Device::~Device()
{
	sem_destroy(&_lock);
}

int
Device::init()
{
	int ret = 0;

	return ret;
}

int
Device::dev_read(unsigned offset, void *data, unsigned count)
{
	return -ENODEV;
}

int
Device::dev_write(unsigned offset, void *data, unsigned count)
{
	return -ENODEV;
}

int
Device::dev_ioctl(unsigned operation, unsigned arg)
{
	switch (operation) {
	case DEVIOCGDEVICEID:
		return (int)_device_id.devid;
	}

	return -ENODEV;
}

} // namespace device
