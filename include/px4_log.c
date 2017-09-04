#include <stdlib.h>
#include "px4_log.h"
#define __PX4_POSIX
#ifdef __PX4_POSIX
#include <execinfo.h>
#endif
#include "uORB.h"
#include "log_message.h"
#include "drv_hrt.h"

static orb_advert_t orb_log_message_pub = NULL;
int sub = -1;
orb_id_t ID;

__EXPORT const char *__px4_log_level_str[_PX4_LOG_LEVEL_PANIC + 1] = { "INFO", "DEBUG", "WARN", "ERROR", "PANIC" };
__EXPORT const char *__px4_log_level_color[_PX4_LOG_LEVEL_PANIC + 1] =
{ PX4_ANSI_COLOR_RESET, PX4_ANSI_COLOR_GREEN, PX4_ANSI_COLOR_YELLOW, PX4_ANSI_COLOR_RED, PX4_ANSI_COLOR_RED };


void px4_log_initialize(void)
{
	//ASSERT(orb_log_message_pub == NULL);

	/* we need to advertise with a valid message */
	struct log_message_s log_message;
	log_message.timestamp = hrt_absolute_time();
	log_message.severity = 6; //info
	strcpy((char *)log_message.text, "initialized uORB logging");

	orb_log_message_pub = orb_advertise_queue(ORB_ID(log_message), &log_message, 2);

	if (!orb_log_message_pub) {
		PX4_ERR("failed to advertise log_message");
	}
}

void px4_backtrace()
{
#ifdef __PX4_POSIX
	void *buffer[10];
	char **callstack;
	int bt_size;
	int idx;

	bt_size = backtrace(buffer, 10);
	callstack = backtrace_symbols(buffer, bt_size);

	PX4_INFO("Backtrace: %d", bt_size);

	for (idx = 0; idx < bt_size; idx++) {
		PX4_INFO("%s", callstack[idx]);
	}

	free(callstack);
#endif
}

__EXPORT void px4_log_modulename(int level, const char *moduleName, const char *fmt, ...)
{
	PX4_LOG_COLOR_START
	printf(__px4__log_level_fmt __px4__log_level_arg(level));
	PX4_LOG_COLOR_MODULE
	printf(__px4__log_modulename_pfmt, moduleName);
	PX4_LOG_COLOR_MESSAGE
	va_list argptr;
	va_start(argptr, fmt);
	vprintf(fmt, argptr);
	va_end(argptr);
	PX4_LOG_COLOR_END
	printf("\n");

	/* publish an orb log message */
	if (level >= _PX4_LOG_LEVEL_WARN && orb_log_message_pub) { //only publish important messages

		struct log_message_s log_message;
		const unsigned max_length = sizeof(log_message.text);
		log_message.timestamp = hrt_absolute_time();

		const uint8_t log_level_table[] = {
			6, /* _PX4_LOG_LEVEL_ALWAYS */
			7, /* _PX4_LOG_LEVEL_DEBUG */
			4, /* _PX4_LOG_LEVEL_WARN */
			3, /* _PX4_LOG_LEVEL_ERROR */
			0  /* _PX4_LOG_LEVEL_PANIC */
		};
		log_message.severity = log_level_table[level];

		unsigned pos = 0;

		pos += snprintf((char *)log_message.text + pos, max_length - pos, __px4__log_modulename_pfmt, moduleName);
		va_start(argptr, fmt);
		pos += vsnprintf((char *)log_message.text + pos, max_length - pos, fmt, argptr);
		va_end(argptr);
		log_message.text[max_length - 1] = 0; //ensure 0-termination

		orb_publish(ORB_ID(log_message), orb_log_message_pub, &log_message);

	}
}


void message_update_poll(void)
{
	//bool updated;

	/* Check if parameters have changed */
	// orb_check(sub, &updated);

	// if (updated) {
	// 	struct parameter_update_s param_update;
	// 	orb_copy(ORB_ID(log_message), sub, &param_update);
	// }
usleep(1000000); 
	sub = orb_subscribe(ORB_ID(log_message));
	ID = ORB_ID(log_message);
	bool updated;
	struct log_message_s container;
	memset(&container, 0, sizeof(container));
	unsigned i = 0;
	hrt_abstime start_time = hrt_absolute_time();
	while(i < 2) {
		// if(sub == -1)
		// {
		// 	sub = orb_subscribe(ORB_ID(log_message));
		// 	ID = ORB_ID(log_message);
		// }
		orb_check(sub,&updated);
		if (i == 0) { updated = true; } else { usleep(500); }
		if (updated) {
		start_time = hrt_absolute_time();
		i++;
		printf("\nTOPIC: log_message #%d\n", i);
		orb_copy(ID,sub,&container);
		printf("timestamp: %" PRIu64 "\n", container.timestamp);
		printf("severity: %u\n",(unsigned)container.severity);
		} else {
			if (check_timeout(start_time)) {
				break;
			}
		}
	}
}
