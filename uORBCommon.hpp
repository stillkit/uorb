#ifndef _uORBCommon_hpp_
#define _uORBCommon_hpp_

#include "vdev.h"
#include "drv_orb_dev.h"
#include "uORB.h"


namespace uORB
{
static const unsigned orb_maxpath = 64;

#ifdef ERROR
# undef ERROR
#endif
/* ERROR is not defined for c++ */
const int ERROR = -1;

enum Flavor {
	PUBSUB = 0,
	PARAM,

	Flavor_count
};

struct orb_advertdata {
	const struct orb_metadata *meta;
	int *instance;
	int priority;
};
}
#endif // _uORBCommon_hpp_
