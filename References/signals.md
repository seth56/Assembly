# Signal (IPC) Types and Codes Reference

IPC = Interprocess communication  
Signals control processes 

[Resource 1](https://www.bogotobogo.com/Linux/linux_process_and_signals.php)
[Resource 2](https://man7.org/linux/man-pages/man7/signal.7.html)

### Signal dispositions
Each signal has a current disposition, which determines how the process behaves when it is delivered the signal.

|Disposition|Description|
|-|-|
| Terminate |  Default action is to terminate the process. |
| Ignore  |  Default action is to ignore the signal. |
| Core |  Default action is to terminate the process and dump core |
| Stop  | Default action is to stop the process. |
| Continue |  Default action is to continue the process if it is currently stopped. |

### List of Signals  

| Name | Number | Description | Disposition |
|-|-|-|-|
|**SIGHUP**|1| Hangup (POSIX) | Terminate |
|**SIGINT**|2| Terminal interrupt (ANSI) | Terminate |
|**SIGQUIT**|3| Terminal quit (POSIX) | Core |
|**SIGILL**|4| Illegal instruction (ANSI) | Core |
|**SIGTRAP**|5| Trace trap (POSIX) | Core |
|**SIGABRT**|6| Abort signal from sys_abort | Core |
|**SIGIOT**|6| IOT Trap (4.2 BSD) | Core |
|**SIGBUS**|7| BUS error (4.2 BSD) | Core |
|**SIGFPE**|8| Floating point exception (ANSI)  | Core |
|**SIGKILL**|9| Kill(can't be caught or ignored) (POSIX) | Terminate |
|**SIGUSR1**|10| User defined signal 1 (POSIX) | Terminate |
|**SIGSEGV**|11| Invalid memory segment access (ANSI) | Core |
|**SIGUSR2**|12| User defined signal 2 (POSIX) | Terminate |
|**SIGPIPE**|13| Write on a pipe with no reader, Broken pipe (POSIX) | Terminate |
|**SIGALRM**|14| Alarm clock (POSIX) | Terminate |
|**SIGTERM**|15| Termination (ANSI) | Terminate |
|**SIGSTKFLT**|16| Stack fault | Terminate |
|**SIGCHLD**|17| Child process has stopped or exited, changed (POSIX) | Ignore |
|**SIGCONT**|18| Continue executing, if stopped (POSIX) | Continue |
|**SIGSTOP**|19| Stop executing(can't be caught or ignored) (POSIX) | Stop |
|**SIGTSTP**|20| Terminal stop signal (POSIX) | Stop |
|**SIGTTIN**|21| Background process trying to read, from TTY (POSIX) | Stop |
|**SIGTTOU**|22| Background process trying to write, to TTY (POSIX) | Stop |
|**SIGURG**|23| Urgent condition on socket (4.2 BSD) | Ignore |
|**SIGXCPU**|24| CPU limit exceeded (4.2 BSD) | Core |
|**SIGXFSZ**|25| File size limit exceeded (4.2 BSD) | Core |
|**SIGVTALRM**|26| Virtual alarm clock (4.2 BSD) | Terminate |
|**SIGPROF**|27| Profiling alarm clock (4.2 BSD) | Terminate |
|**SIGWINCH**|28| Window size change (4.3 BSD, Sun) | Ignore |
|**SIGIO**|29| I/O now possible (4.2 BSD) | Terminate |
|**SIGPWR**|30| Power failure restart (System V) | Terminate |
