#include <errno.h>
#include <stdbool.h>
#include <stdio.h>
#include <stddef.h>
#include <stdint.h>
#include <semaphore.h>
#include <poll.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>

// #include "linux/kernel.h"
// #include "linux/module.h"
// #include "linux/fs.h"
// #include "linux/init.h"
// #include "linux/types.h"
// #include "linux/errno.h"
// #include "linux/uaccess.h"
// #include "linux/kdev_t.h"
// #include "linux/semaphore.h"

#define __EXPORT __attribute__ ((visibility ("default")))
//#define POLLIN       (0x01)
#define PX4_OK 0
#define OK 0
#define nullptr 0

typedef short pollevent_t;

#define _IO(x,y) (x+y)
#define _DF_IOC(x,y) _IO(x,y)
#define DIOC_GETPRIV    1
#define _DEVICEIOCBASE          (0x100)
#define _DEVICEIOC(_n)          (_DF_IOC(_DEVICEIOCBASE, _n))

/** ask device to stop publishing */
#define DEVIOCSPUBBLOCK _DEVICEIOC(0)
#define DEVIOCGPUBBLOCK _DEVICEIOC(1)
#define DEVIOCGDEVICEID _DEVICEIOC(2)


