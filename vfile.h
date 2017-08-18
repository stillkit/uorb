/**
 * @file vfile.cpp
 * Virtual file
 *
 * @author Mark Charlebois <charlebm@gmail.com>
 */

//#include <px4_tasks.h>
//#include <drivers/drv_device.h>
#include "vdev.h"

class VFile : public device::VDev
{
public:

	static VFile *createFile(const char *fname, mode_t mode);
	~VFile() {}

	virtual ssize_t write(device::file_t *handlep, const char *buffer, size_t buflen);

private:
	VFile(const char *fname, mode_t mode);
	VFile(const VFile &);
};
