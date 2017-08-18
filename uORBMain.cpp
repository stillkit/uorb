#include <string.h>
#include <pthread>
#include "uORBManager.hpp"
#include "uORB.h"
#include "uORBCommon.hpp"
#include "px4_log.h"

extern "C" { __EXPORT int uorb_main(int argc, char *argv[]); }

static uORB::DeviceMaster *g_dev = nullptr;
static void usage()
{
	//PX4_INFO("Usage: uorb 'start', 'status'");
}

void thread(void)
{
	int i;
	for(i=0;i<3;i++)
	printf("This is a pthread.n");
}

int
main(int argc, char *argv[])
{
	if (argc < 2) {
		usage();
		return -EINVAL;
	}

	/*
	 * Start/load the driver.
	 *
	 * XXX it would be nice to have a wrapper for this...
	 */
	if (!strcmp(argv[1], "start")) {

		if (g_dev != nullptr) {
			//PX4_WARN("already loaded");
			/* user wanted to start uorb, its already running, no error */
			return 0;
		}

		if (!uORB::Manager::initialize()) {
			//PX4_ERR("uorb manager alloc failed");
			return -ENOMEM;
		}

		/* create the driver */
		g_dev = uORB::Manager::get_instance()->get_device_master(uORB::PUBSUB);

		if (g_dev == nullptr) {
			return -errno;
		}
		printf("11111111111111");

		px4_log_initialize();

		message_update_poll();

		return OK;
	}

	/*
	 * Print driver information.
	 */
	if (!strcmp(argv[1], "status")) {
		if (g_dev != nullptr) {
			g_dev->printStatistics(true);

		} else {
			//PX4_INFO("uorb is not running");
		}

		return OK;
	}

	usage();
	return -EINVAL;
}
