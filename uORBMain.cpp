#include <string.h>
#include <pthread.h>
#include <sys/types.h>
#include <unistd.h>
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

void * kpthread(void * arg)
{
	int i;
	for(i=0;i<3;i++)
	printf("This is a pthread\n");
	message_update_poll();
	printf("This is a pthread\n");
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

		// px4_log_initialize();

		if(fork() == 0){
			printf("This is a first sun process\n");
			message_update_poll();
		}else{
			if(fork() == 0){
				printf("This is a second sun process\n");
				px4_log_initialize();
			}else{
				printf("This is a farter pthread\n");
			}			
		}

		// pthread_t id;
		// int i,ret;
		// ret=pthread_create(&id,NULL,kpthread,(NULL));
		// if(ret!=0){
		// 	printf ("Create pthread error!\n");
		// 	exit (1);
		// }
		// for(i=0;i<3;i++)
		// 	printf("This is the main process\n");
		// pthread_join(id,NULL);

		// return OK;
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
