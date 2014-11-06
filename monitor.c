#include <stdlib.h>
#include <string.h>
#include <stdio.h>
#include <unistd.h>
#include <jni.h>
#include <android/log.h>
#include <sys/select.h>
#include <errno.h>
#include <sys/inotify.h>
#include <fcntl.h>
#include <sys/types.h>
#include <signal.h>
#include <dirent.h>

#define EVENT_SIZE  ( sizeof (struct inotify_event) )
#define EVENT_BUF_LEN     ( 1024 * ( EVENT_SIZE + 16 ) )

#define MEM_ZERO(pDest, destSize) memset(pDest, 0, destSize)

#ifndef _Included_com_aispeech_aicover_service_CoverService
#define _Included_com_aispeech_aicover_service_CoverService

#ifdef __cplusplus
extern "C" {
#endif


JNIEXPORT jint JNICALL JNI_OnLoad(JavaVM* vm, void* reserved) {
	JNIEnv* env = NULL;
	jint result = -1;

	__android_log_write(ANDROID_LOG_ERROR, "Monitor", "JNI_OnLoad");

	if ((*vm)->GetEnv(vm, (void**) &env, JNI_VERSION_1_4) != JNI_OK) {
//	if (vm->GetEnv((void**) &env, JNI_VERSION_1_4) != JNI_OK) {
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "Message");
		return result;
	}

	return JNI_VERSION_1_4;
}

JNIEXPORT void Java_com_aispeech_aicover_service_CoverService_initUninstallMonitor(JNIEnv* env, jobject thiz) {
	//初始化log
	__android_log_write(ANDROID_LOG_ERROR, "Monitor", "init OK");

	//fork子进程，以执行轮询任务
	pid_t pid = fork();
	if (pid < 0) {
		//出错log
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "fork failed !!!");
	} else if (pid == 0) {
		//子进程注册"/data/data/com.aispeech.aicover"目录监听器
		int fileDescriptor = inotify_init();
		if (fileDescriptor < 0) {
			__android_log_write(ANDROID_LOG_ERROR, "Monitor", "inotify_init failed !!!");

			exit(1);
		}

		int watchDescriptor;
		watchDescriptor = inotify_add_watch(fileDescriptor,
				"/data/data/com.aispeech.aicover", IN_DELETE);
		if (watchDescriptor < 0) {
			__android_log_write(ANDROID_LOG_ERROR, "Monitor", "inotify_add_watch failed !!!");
			exit(1);
		}

		//分配缓存，以便读取event，缓存大小=一个struct inotify_event的大小，这样一次处理一个event
		void *p_buf = malloc(sizeof(struct inotify_event));
		if (p_buf == NULL) {
			__android_log_write(ANDROID_LOG_ERROR, "Monitor", "malloc failed !!!");
			exit(1);
		}
		//开始监听
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "start observer");
		size_t readBytes = read(fileDescriptor, p_buf,
				sizeof(struct inotify_event));

		//read会阻塞进程，走到这里说明收到目录被删除的事件，注销监听器
		free(p_buf);
		inotify_rm_watch(fileDescriptor, IN_DELETE);

		//目录不存在log
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "uninstalled");
		//执行命令am start -a android.intent.action.VIEW -d http://shouji.360.cn/web/uninstall/uninstall.html
		// execlp("am", "am", "start", "-a", "android.intent.action.VIEW", "-d", "https://www.google.com", (char *)NULL);
		//4.2以上的系统由于用户权限管理更严格，需要加上 --user 0
		execlp("am", "am", "start", "--user", "0", "-a",
				"android.intent.action.VIEW", "-d", "https://www.google.com",
				(char *) NULL);
	} else {
		//父进程直接退出，使子进程被init进程领养，以避免子进程僵死
	}

//	return (*env)->NewStringUTF(env, "Hello from JNI !");
}

void _inotify_event_handler(JNIEnv* env, struct inotify_event *event)   //从buf中取出一个事件。
{
	char log[120];
	sprintf(log, "event->mask: 0x%08x event->cookie: 0x%08x event->len: 0x%08x event->name: %s", event->mask, event->cookie, event->len,
			event->name);
	__android_log_write(ANDROID_LOG_ERROR, "Monitor", log);
}

void monitor(pid_t mpid) {
	char procDir[50] = {0};
	snprintf(procDir, strlen(procDir), "/proc/%ld/exe", (long)mpid);
	__android_log_write(ANDROID_LOG_ERROR, "Monitor", procDir);

		//分配缓存，以便读取event，缓存大小=一个struct inotify_event的大小，这样一次处理一个event
//		int fd = 0;
//		int wd = 0;
//
//		void *p_buf = malloc(sizeof(struct inotify_event));
//		if (p_buf == NULL) {
//			LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//					(*env)->GetStringUTFChars(env,
//							(*env)->NewStringUTF(env, "malloc failed !!!"),
//							&b_IS_COPY));
//
//			exit(1);
//		}
//
//		fd = inotify_init();
//		if (fd < 0) {
//			LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//					(*env)->GetStringUTFChars(env,
//							(*env)->NewStringUTF(env,
//									"inotify_init failed !!!"), &b_IS_COPY));
//
//			exit(1);
//		}
//
//
//		LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//							(*env)->GetStringUTFChars(env,
//									(*env)->NewStringUTF(env, procDir),
//									&b_IS_COPY));
//
//		wd = inotify_add_watch(fd, procDir, IN_ALL_EVENTS);
//		if (wd < 0) {
//			LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//					(*env)->GetStringUTFChars(env,
//							(*env)->NewStringUTF(env,
//									"inotify_add_watch failed !!!"),
//							&b_IS_COPY));
//
//			exit(1);
//		}

		nice(5);

//		char buf[1024] = { 0 };
//		int rslt = readlink(procDir, buf, 1024 - 1);
//		if (rslt < 0 || (rslt >= 1024 - 1)) {
//			LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//							(*env)->GetStringUTFChars(env,
//									(*env)->NewStringUTF(env, "read link error"),
//									&b_IS_COPY));
//		} else {
//			buf[rslt] = '\0';
//			int i = 0;
//			for (i = rslt; i >= 0; i--) {
//				printf("buf[%d] %c\n", i, buf[i]);
//				if (buf[i] == '/') {
//					buf[i + 1] = '\0';
//					break;
//				}
//			}
//			LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//								(*env)->GetStringUTFChars(env,
//										(*env)->NewStringUTF(env, buf),
//										&b_IS_COPY));
//		}
		//开始监听
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "start observer");

//		size_t readBytes = read(fd, p_buf, sizeof(struct inotify_event));
//
//		struct inotify_event * event = (struct inotify_event *) (p_buf);
//		char log[100];
//		sprintf(log, "event->mask: 0x%08x event->name: %s", event->mask,
//				event->name);
//		//开始监听
//		LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//				(*env)->GetStringUTFChars(env, (*env)->NewStringUTF(env, log),
//						&b_IS_COPY));
//
//		//read会阻塞进程，走到这里说明收到目录被删除的事件，注销监听器
//		free(p_buf);
//		inotify_rm_watch(fd, wd);
//		//目录不存在log
//		LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//				(*env)->GetStringUTFChars(env,
//						(*env)->NewStringUTF(env, "stop"), &b_IS_COPY));
//		close(fd);
		//4.2以上的系统由于用户权限管理更严格，需要加上 --user 0
		//		execlp("am", "am", "start", "--user", "0", "com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
		//				(char *) NULL);

		//		exit(1);

//		unsigned char buf[1024] = { 0 };
//		struct inotify_event *event = NULL;
//		fd_set fds;
//		int isMonitoring = 1;
		while (1) {
//			FD_ZERO(&fds);
//			FD_SET(fd, &fds);

			usleep(2000000);

			if (kill(mpid, 0) == ESRCH) {
				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "process killed ,...");
//				isMonitoring = 0;
//				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
				execlp("am", "am", "start", "--user", "0", "com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
												(char *) NULL);
				exit(0);
				break;
			} else {
				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "monitor kill now.");
//				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
//				execlp("am", "am", "start", "--user", "0", "com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
//								(char *) NULL);
			}



//			if (access(procDir, F_OK) == 0) {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "exe can read now.");
////				LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
////						(*env)->GetStringUTFChars(env, "exe can read now.", &b_IS_COPY));
//			} else {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "exe can not read now.");
////				isMonitoring = 0;
//				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
//				exit(0);
//				break;
//			}
//			//if (select(fd + 1, &fds, NULL, NULL, NULL) > 0) {
//				LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//								(*env)->GetStringUTFChars(env,
//										(*env)->NewStringUTF(env, "read event ...."),
//										&b_IS_COPY));
//
//				int len, index = 0;
//				if (errno == EINTR || (len = read(fd, &buf, sizeof(buf))) <= 0) {
//						//&& (errno == EINTR)) {      //没有读取到事件。
//					LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//											(*env)->GetStringUTFChars(env,
//													(*env)->NewStringUTF(env, "read error"),
//													&b_IS_COPY));
//					isMonitoring = 0;
//
//					break;
//				}
//
//				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
//
//				LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//															(*env)->GetStringUTFChars(env,
//																	(*env)->NewStringUTF(env, "read event log"),
//																	&b_IS_COPY));
//				while (index < len)
//				{
//					event = (struct inotify_event *) (buf + index);
//					_inotify_event_handler(env, event);                       //获取事件。
//					index += sizeof(struct inotify_event) + event->len; //移动index指向下一个事件。
//				}
			//}
//				usleep(500);

		}
//		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "end observer");

//		exit(0);
//		FD_ZERO(&fds);
//		inotify_rm_watch(fd, wd);
//
//		/*closing the INOTIFY instance*/
//		 close(fd);


//	return (*env)->NewStringUTF(env, "Hello from JNI !");
}

void catcher(int sig) {
	__android_log_write(ANDROID_LOG_ERROR, "Monitor", "catcher sig");
	switch (sig) {
	case SIGINT:
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "catcher SIGINT");
		break;

	case SIGHUP:
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "catcher SIGHUP");
		break;

	case SIGTERM:
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "catcher SIGTERM");
		break;

	case SIGKILL:
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "catcher SIGKILL");
		break;
	}
}

JNIEXPORT void Java_com_aispeech_aicover_service_CoverService_initStopMonitor(JNIEnv* env, jobject thiz) {
	//初始化log
	__android_log_write(ANDROID_LOG_ERROR, "Monitor", "init OK");

	pid_t pid = getpid();
	char pidChars[50] = {0};
	snprintf(pidChars, sizeof(pidChars), "/Proc/%d/exe", pid);

	__android_log_write(ANDROID_LOG_ERROR, "Monitor", pidChars);


	//fork子进程，以执行轮询任务
	pid_t mpid = fork();
	if (mpid < 0) {
		//出错log
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "fork failed !!!");
	} else if (mpid == 0) {
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "fork success !!!");

		pid_t ppid = getppid();
		char pidDir[50] = {0};
		snprintf(pidDir, sizeof(pidDir), "/Proc/%d/exe", ppid);
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", pidDir);

		signal(SIGHUP,catcher);
		//stop user from using control c.
		signal(SIGINT, catcher);
		//not working
		signal(SIGTERM, catcher);
		signal(SIGKILL, catcher);

		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "added signal handler");

		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "start observer");

		while (1) {
//			FD_ZERO(&fds);
//			FD_SET(fd, &fds);

			usleep(1000000);

			int r = kill(ppid, 0);
			if (r == 0) {
				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "process exists.");
			} else {
				if (errno == EINVAL) {
					__android_log_write(ANDROID_LOG_ERROR, "Monitor", "sig argument is an invalid or unsupported.");
				} else if (errno == EPERM) {
					__android_log_write(ANDROID_LOG_ERROR, "Monitor", "not have permission to send the signal.");
				} else if (errno == ESRCH) {
					__android_log_write(ANDROID_LOG_ERROR, "Monitor", "No process or process group can be found.");
					system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
//					execlp("am", "am", "start", "--user", "0",
//							"com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
//							(char *) NULL);
					exit(0);
					break;
				}
			}
//			if (kill(ppid, 0) == ESRCH) {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "process killed ,...");
////				isMonitoring = 0;
//				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
////				execlp("am", "am", "start", "--user", "0", "com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
////												(char *) NULL);
//				exit(0);
//				break;
//			} else {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor", "monitor kill now.");
////				system("am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
////				execlp("am", "am", "start", "--user", "0", "com.aispeech.aicover/com.aispeech.aicover.DaemonActivity",
////								(char *) NULL);
//			}

//			if (access(pidDir, F_OK) == 0) {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor",
//						"exe can read now.");
//				//				LOG_ERROR((*env)->GetStringUTFChars(env, tag, &b_IS_COPY),
//				//						(*env)->GetStringUTFChars(env, "exe can read now.", &b_IS_COPY));
//			} else {
//				__android_log_write(ANDROID_LOG_ERROR, "Monitor",
//						"exe can not read now.");
//				//				isMonitoring = 0;
//				system(
//						"am start --user 0 com.aispeech.aicover/com.aispeech.aicover.DaemonActivity");
//				exit(0);
//				break;
//			}
		}

//		pid_t cpid = fork();
//		pid_t ppid = mpid;
//
//		if (cpid < 0) {
//		    exit(1);
//		} else if (cpid > 0) {
//			usleep(5000);
//		    exit(0);
//		} else {
//			__android_log_write(ANDROID_LOG_ERROR, "Monitor", "fork child success !!!");
//
//			char procDir[50] = {0};
//			snprintf(procDir, strlen(procDir), "/proc/%ld/exe", (long)ppid);
//			__android_log_write(ANDROID_LOG_ERROR, "Monitor", procDir);
//
//			monitor(ppid);
//		}
	} else {
		//父进程直接退出，使子进程被init进程领养，以避免子进程僵死
		__android_log_write(ANDROID_LOG_ERROR, "Monitor", "fork parent");
	}

}

void monitor_watch() {
	pid_t ident = getpid();
	//kill(ident);
	//string "/proc/%s/exe";
	unsigned char buf[1024] = { 0 };
	struct inotify_event *event = NULL;
	//	string str;
	//	int ss = 8818;
	//	sprintf(str, "/proc/%d/exe", ss);
	int fd = inotify_init();
	int wd = inotify_add_watch(fd, "/proc/8818/exe", IN_ALL_EVENTS);

	for (;;) {
		fd_set fds;
		FD_ZERO(&fds);
		FD_SET(fd, &fds);

		if (select(fd + 1, &fds, NULL, NULL, NULL) > 0) {
			int len, index = 0;
			while (((len = read(fd, &buf, sizeof(buf))) < 0) && (errno == EINTR))
				; //没有读取到事件。
			while (index < len) {
				event = (struct inotify_event *) (buf + index);
				//_inotify_event_handler(event);                           //获取事件。
				index += sizeof(struct inotify_event) + event->len; //移动index指向下一个事件。
			}
		}
	}

	inotify_rm_watch(fd, wd);              //删除对指定文件的监控。
}

#ifdef __cplusplus
}
#endif

#endif
