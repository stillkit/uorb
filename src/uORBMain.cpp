#include <string.h>
#include <pthread.h>
#include <sys/types.h>
#include <unistd.h>
#include "uORBManager.hpp"
#include "uORB.h"
#include "uORBCommon.hpp"
// #define __PX4_POSIX
#define DEBUG
#include "px4_log.h"
#include "cpuload.h"
#include "camera_trigger.h"
#include "uORBDevices_posix.hpp"


extern "C" { __EXPORT int uorb_main(int argc, char *argv[]); }

static uORB::DeviceMaster *g_dev = nullptr;
static void usage()
{
	//PX4_INFO("Usage: uorb 'start', 'status'");
}
struct cpuload_s _cpuload;
static orb_advert_t _cpuload_pub = nullptr;

void adviser_cpuload(void){

	// if (g_dev != nullptr) {
	// 		PX4_WARN("already loaded");
	// 		/* user wanted to start uorb, its already running, no error */
	// 		return;
	// 		// return 0;
	// 	}

	// 	if (!uORB::Manager::initialize()) {
	// 		PX4_ERR("uorb manager alloc failed");
	// 		return;
	// 		// return -ENOMEM;
	// 	}

	// 	/* create the driver */
	// 	g_dev = uORB::Manager::get_instance()->get_device_master(uORB::PUBSUB);

	// 	if (g_dev == nullptr) {
	// 		return;
	// 		// return -errno;
	// 	}
	
	_cpuload.timestamp = hrt_absolute_time();
	_cpuload.load = 1.0f;
	_cpuload.ram_usage = 2.0f;

	if (_cpuload_pub == nullptr) {
		_cpuload_pub = orb_advertise(ORB_ID(cpuload), &_cpuload);
		// _cpuload_pub = orb_advertise_queue(ORB_ID(cpuload), &_cpuload, 2);

	} else {
		orb_publish(ORB_ID(cpuload), _cpuload_pub, &_cpuload);
		// PX4_INFO("tttttttttttttttttttt");
	}
	// printf("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS\n");
}

void adviser_camera_tregger(void){
	struct camera_trigger_s _camera_trigger;
	static orb_advert_t _camera_trigger_pub = nullptr;
	_camera_trigger.timestamp = hrt_absolute_time();
	_camera_trigger.seq = 10;

	if (_camera_trigger_pub == nullptr) {
		_camera_trigger_pub = orb_advertise(ORB_ID(camera_trigger), &_camera_trigger_pub);
		// _cpuload_pub = orb_advertise_queue(ORB_ID(cpuload), &_cpuload, 2);

	} else {
		orb_publish(ORB_ID(camera_trigger), _camera_trigger_pub, &_camera_trigger);
	}
	// printf("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS\n");
}

void camera_tregger_update_poll(void)
{
	//bool updated;

	/* Check if parameters have changed */
	// orb_check(sub, &updated);

	// if (updated) {
	// 	struct parameter_update_s param_update;
	// 	orb_copy(ORB_ID(log_message), sub, &param_update);
	// }
	// usleep(1000000); 
	int sub = -1;
	// orb_id_t ID;
	// struct camera_trigger_s container;	
	
	sub = orb_subscribe(ORB_ID(camera_trigger));
	// ID = ORB_ID(camera_trigger);
	struct camera_trigger_s container;
	memset(&container, 0, sizeof(container));
	bool updated;
	unsigned i = 0;
	hrt_abstime start_time = hrt_absolute_time();
	while(i < 2) {
		orb_check(sub,&updated);
		if (i == 0) { updated = true; } else { usleep(500); }
		if (updated) {
		start_time = hrt_absolute_time();
		i++;
		printf("\nTOPIC: camera_trigger #%d\n", i);
		orb_copy(ORB_ID(camera_trigger),sub,&container);
		printf("timestamp: %" PRIu64 "\n", container.timestamp);
		printf("seq: %u\n",container.seq);
		} else {
			if (check_timeout(&start_time)) {
				break;
			}
		}
	}

}

void cpuload_update_poll(void)
{
	//bool updated;

	/* Check if parameters have changed */
	// orb_check(sub, &updated);

	// if (updated) {
	// 	struct parameter_update_s param_update;
	// 	orb_copy(ORB_ID(log_message), sub, &param_update);
	// }
	usleep(1000000); 
	int sub = -1;
	// orb_id_t ID;
	bool updated;
	struct cpuload_s container;
	sub = orb_subscribe(ORB_ID(cpuload));
	// ID = ORB_ID(cpuload);
	
	memset(&container, 0, sizeof(container));
	unsigned i = 0;
	hrt_abstime start_time = hrt_absolute_time();
	while(i < 10) {
		// if(sub == -1){
		// 	sub = orb_subscribe(ORB_ID(cpuload));
		// }
		orb_check(sub,&updated);
		// printf("kkkkkkkkkkkkkkkk %d\n",updated);
		if (i == 0) { updated = true; } else { usleep(500); }

		if (updated) {
			start_time = hrt_absolute_time();
			i++;
			printf("\nTOPIC: cpuload #%d\n", i);
			orb_copy(ORB_ID(cpuload),sub,&container);
			printf("timestamp: %" PRIu64 "\n", container.timestamp);
			printf("load: %f\n",container.load);
			printf("ram_usage: %f\n",container.ram_usage);
		} else {
			if (check_timeout(&start_time)) {
				break;
			}
		}
	}
}

void * kpthread(void * arg)
{
	int i;
	for(i=0;i<1000;i++);
	// printf("This is a pthread\n");
	//message_update_poll();
	// px4_log_initialize();
	// message_update_poll();
	cpuload_update_poll();
	printf("This is a pthread\n");
}

void * mpthread(void * arg)
{
	// int i;
	// for(i=0;i<3;i++)
	// printf("This is a m pthread\n");
	// message_update_poll();
	// px4_log_initialize();
	adviser_cpuload();
	printf("This is a m pthread\n");
}

void * mpsthread(void * arg)
{
	// int i;
	// for(i=0;i<3;i++)
	// printf("This is a m pthread\n");
	// message_update_poll();
	// px4_log_initialize();
	// update_cpuload();
	cpuload_update_poll();
	printf("This is a s pthread\n");
}

#define error(x) my_error(__FILE__, __LINE__, x)
void my_error(const char* file, const int line, const char* msg)
{
    printf("Error at %s:%d: %s\n", file, line, msg);
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

		// if (g_dev != nullptr) {
		// 	PX4_WARN("already loaded");
		// 	/* user wanted to start uorb, its already running, no error */
		// 	return 0;
		// }

		// if (!uORB::Manager::initialize()) {
		// 	PX4_ERR("uorb manager alloc failed");
		// 	return -ENOMEM;
		// }

		// /* create the driver */
		// g_dev = uORB::Manager::get_instance()->get_device_master(uORB::PUBSUB);

		// if (g_dev == nullptr) {
		// 	return -errno;
		// }
		// printf("11111111111111");
		// PX4_DEBUG("qqqqqqqqqqqqqqqqqqqqqqqqqqqq");
		// PX4_PANIC("ggggggggggggggggggggggggg");	
		// PX4_ERR("fffffffffffffffffffffffffffff");
		// PX4_WARN("llllllllllllllllllll");
		// error("kkkkkkkkkkkkkkkk");

		// adviser_cpuload();
		// cpuload_update_poll();

		// device::file_t *filp = (device::file_t *)1;
		// SubscriberData *sd = (SubscriberData *)(uORB::DeviceNode::filp_to_sd(filp));
		// PX4_DEBUG("sd->generation %d",sd->generation);
		// update_cpuload();
		// px4_log_initialize();
		// message_update_poll();
		// px4_log_initialize();
		// message_update_poll();
		// adviser_cpuload();
		// // cpuload_update_poll();
		// adviser_camera_tregger();
		// camera_tregger_update_poll();

		if(fork() == 0){
			printf("This is a first sun process\n");
			// adviser_cpuload();
			// message_update_poll();
			// cpuload_update_poll();
			if (g_dev != nullptr) {
				PX4_WARN("already loaded");
				/* user wanted to start uorb, its already running, no error */
				return 0;
			}

			if (!uORB::Manager::initialize()) {
				PX4_ERR("uorb manager alloc failed");
				return -ENOMEM;
			}

			/* create the driver */
			g_dev = uORB::Manager::get_instance()->get_device_master(uORB::PUBSUB);

			if (g_dev == nullptr) {
				return -errno;
			}
			printf("This is a farter pthread\n");
	
		}else{
			if(fork() == 0){
				printf("This is a second sun process\n");
				// px4_log_initialize();
				// adviser_cpuload();
				// cpuload_update_poll();
				// usleep(1000000);		
				// cpuload_update_poll();	
				adviser_cpuload();
				
			}else{
				if(fork() == 0){
					cpuload_update_poll();	
				}
				
			}
					
		}
		
		// if(fork() == 0){
		// 	printf("This is a first sun process\n");
		// 	adviser_cpuload();
			
		// }else{
		// 	if(fork() == 0){
		// 		printf("This is a second sun process\n");
		// 		// px4_log_initialize();
		// 		// adviser_cpuload();
		// 		// cpuload_update_poll();
		// 		// usleep(1000000);		
		// 		cpuload_update_poll();	
				
		// 	}else{
				
				
		// 		// message_update_poll();
		// 		// cpuload_update_poll();
		// 		if (g_dev != nullptr) {
		// 			PX4_WARN("already loaded");
		// 			/* user wanted to start uorb, its already running, no error */
		// 			return 0;
		// 		}

		// 		if (!uORB::Manager::initialize()) {
		// 			PX4_ERR("uorb manager alloc failed");
		// 			return -ENOMEM;
		// 		}

		// 		/* create the driver */
		// 		g_dev = uORB::Manager::get_instance()->get_device_master(uORB::PUBSUB);

		// 		if (g_dev == nullptr) {
		// 			return -errno;
		// 		}
		// 		printf("This is a farter pthread\n");
		// 	}			
		// }

		// pthread_t id,id2,id3;
		// int ret;
		// ret=pthread_create(&id,NULL,mpthread,(NULL));
		// if(ret!=0){
		// 	printf ("Create first pthread error!\n");
		// 	exit (1);
		// }

		// ret=pthread_create(&id2,NULL,kpthread,(NULL));
		// if(ret!=0){
		// 	printf ("Create second pthread error!\n");
		// 	exit (1);
		// }

		// // ret=pthread_create(&id3,NULL,mpsthread,(NULL));
		// // if(ret!=0){
		// // 	printf ("Create third pthread error!\n");
		// // 	exit (1);
		// // }
		// // for(i=0;i<3;i++)
		// 	printf("This is the main process\n");
		// pthread_join(id3,NULL);
		// pthread_join(id2,NULL);
		// pthread_join(id,NULL);

		// message_update_poll();
		// cpuload_update_poll();


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
