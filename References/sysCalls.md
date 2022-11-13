# System Calls References 

Values placed in %ax register before a syscall or interrupt  
Look up [System Call] flags to get flag options
#fd = #filedescriptor | #prot = #protocol

A buffers and addresses are pointers to a place in memory (Variables and data). A buffer could also be a reserved space which the call writes to.

[System Calls Manual](https://man7.org/linux/man-pages/man2/pipe.2.html)

| System Call | ID | Arg1 | Arg2 | Arg3 | Details |
| - | - | - | - | - | - |
|**sys_read**|0| #fd | $buffer | #count | [Info](https://man7.org/linux/man-pages/man2/read.2.html) Read from a file descriptor |
|**sys_write**|1| #fd | $buffer | #count | [Info](https://man7.org/linux/man-pages/man2/write.2.html) Write to a file descriptor |
|**sys_open**|2| $address | #flags | #perms or #mode | [Info](https://man7.org/linux/man-pages/man2/open.2.html) Open and possibly create a file (fd returned in %ax) |
|**sys_close**|3| #fd | | | [Info](https://man7.org/linux/man-pages/man2/close.2.html) Close a file descriptor |
|**sys_stat**|4| $address | $buffer | | [Info](https://man7.org/linux/man-pages/man2/stat.2.html) Get file status |
|**sys_fstat**|5| #fd | $buffer | | [Info](https://man7.org/linux/man-pages/man2/fstat.2.html) Get file status |
|**sys_lstat**|6| $address | $buffer | | [Info](https://man7.org/linux/man-pages/man2/lstat.2.html) Get file status |
|**sys_poll**|7| #fds | #numfds | #timeout milliseconds | [Info](https://man7.org/linux/man-pages/man2/poll.2.html) Wait for some event on a fd |
|**sys_lseek**|8| #fd | #offset (bytes) | #whence | [Info](https://man7.org/linux/man-pages/man2/lseek.2.html) Reposition read/wite file offset |
|**sys_mmap**|9| $address | #length | #prot, #fd, #offset | [Info](https://man7.org/linux/man-pages/man2/mmap.2.html) Map files or devices into memory | 
|**sys_mprotect**|10| $address | #length | #prot | [Info](https://man7.org/linux/man-pages/man2/mprotect.2.html) Set protection on a region of memory |
|**sys_munmap**|11| $address | #length | #prot, #fd, #offset | [Info](https://man7.org/linux/man-pages/man2/munmap.2.html) Unmap files or devices from memory | 
|**sys_brk**|12| $address | | | [Info](https://man7.org/linux/man-pages/man2/brk.2.html) Change data segment size. Use sys_malloc | 
|**sys_rt_sigaction**|13| #signum | #act | #oldact | [Info](https://man7.org/linux/man-pages/man2/rt_sigaction.2.html) Examine and change a signal action | 
|**sys_rt_sigprocmask**|14| #how | #set | #oldset | [Info](https://man7.org/linux/man-pages/man2/rt_sigaction.2.html) Examine and change blocked signals | 
|**sys_rt_sigreturn**|15| void | | | [Info](https://man7.org/linux/man-pages/man2/rt_sigreturn.2.html) Return from signal handler and cleanup. Never call directly. | 
|**sys_ioctl**|16| #fd | #request | $address | [Info](https://man7.org/linux/man-pages/man2/ioctl.2.html) Control device |
|**sys_pread64**|17| #fd | $buffer | #count, #offset | [Info](https://man7.org/linux/man-pages/man2/pread64.2.html) Read from a file descriptor at a given offset |
|**sys_pwrite64**|18| #fd | $buffer | #count, #offset | [Info](https://man7.org/linux/man-pages/man2/pread64.2.html) Write to a file descriptor at a given offset |
|**sys_readv**|19| #fd | $iov | #iovcnt | [Info](https://man7.org/linux/man-pages/man2/readv.2.html) Read from multiple buffers |
|**sys_writev**|20| #fd | $iov | #iovcnt | [Info](https://man7.org/linux/man-pages/man2/readv.2.html) Write to multiple buffers |
|**sys_access**|21| $address | #perms or #mode | | [Info](https://man7.org/linux/man-pages/man2/access.2.html) Check user's permissions for a file |
|**sys_pipe**|22| #pipefd[2] | | | [Info](https://man7.org/linux/man-pages/man2/pipe.2.html) Create pipe |
|**sys_select**|23| #nfds | #readfds | #writefds, #exceptfds, #timeout | [Info](https://man7.org/linux/man-pages/man2/select.2.html) Synchronous I/O multiplexing |
|**sys_sched_yield**|24| void | | | [Info](https://man7.org/linux/man-pages/man2/sched_yield.2.html) Yield the processor |
|**sys_mremap**|25| $address | #old_len | #new_len, #flags, $newaddress | [Info](https://man7.org/linux/man-pages/man2/mremap.2.html) Remap a virtual memory address |
|**sys_msync**|26| $address | #length | #flags | [Info](https://man7.org/linux/man-pages/man2/msync.2.html) Synchronize a file with a memory map |
|**sys_mincore**|27| $address | #length | $vec | [Info](https://man7.org/linux/man-pages/man2/mincore.2.html) Determine whether pages are resident in memory |
|**sys_madvise**|28| $address | #length | #advice | [Info](https://man7.org/linux/man-pages/man2/madvise.2.html) Give advice about use of memory |
|**sys_shmget**|29| #key | #size | #shmflag | [Info](https://man7.org/linux/man-pages/man2/shmget.2.html) Allocates a System V shared memory segment |
|**sys_shmat**|30| #shmid | $shmaddr | #shmflg | [Info](https://man7.org/linux/man-pages/man2/shmat.2.html) System V shared memory operations |
|**sys_shmctl**|31| #shmid | #cmd | $buffer | [Info](https://man7.org/linux/man-pages/man2/shmctl.2.html) System V shared memory control |
|**sys_dup**|32| #fd | | | [Info](https://man7.org/linux/man-pages/man2/dup.2.html) Duplicate a file descriptor |
|**sys_dup2**|33| #oldfd | #newfd | | [Info](https://man7.org/linux/man-pages/man2/dup.2.html) Duplicate a file descriptor |
|**sys_pause**|34| void | | | [Info](https://man7.org/linux/man-pages/man2/pause.2.html) Wait for signal |
|**sys_nanosleep**|35| $time | $time or 0 | | [Info](https://man7.org/linux/man-pages/man2/nanosleep.2.html) High resolution sleep |
|**sys_getitimer**|36| #which | $currentvalue | | [Info](https://man7.org/linux/man-pages/man2/setitimer.2.html) Get value of an interval timer |
|**sys_alarm**|37| #seconds | | | [Info](https://man7.org/linux/man-pages/man2/alarm.2.html) Set an alarm clock for delivery of a signal |
|**sys_setitimer**|38| #which | $newvalue | #oldvalue | [Info](https://man7.org/linux/man-pages/man2/setitimer.2.html) Set value of an interval timer |
|**sys_getpid**|39| void | | | [Info](https://man7.org/linux/man-pages/man2/getpid.2.html) Get process ID |
|**sys_sendfile**|40| #outfd | #infd | $offset, #count | [Info](https://man7.org/linux/man-pages/man2/sendfile.2.html) Transfer data in between file descriptors |
|**sys_socket**|41| #domain | #type | #prot | [Info](https://man7.org/linux/man-pages/man2/socket.2.html) Create an endpoint for communication |
|**sys_connect**|42| #sockfd | $address | #addrlen | [Info](https://man7.org/linux/man-pages/man2/connect.2.html) Initiate a connection on a socket |
|**sys_accept**|43| #sockfd | $address | #addrlen | [Info](https://man7.org/linux/man-pages/man2/accept.2.html) Accept a connection on a socket |
|**sys_sendto**|44| #sockfd | $buffer | #len, #flags, $destaddr, #addrlen | [Info](https://man7.org/linux/man-pages/man2/sendto.2.html) Send a message on a socket |
|**sys_recvfrom**|45| #sockfd | $buffer | #len, #flags, $srcaddr | [Info](https://man7.org/linux/man-pages/man2/sendto.2.html) Recieve a message from a socket |
|**sys_sendmsg**|46| #sockfd | $msg flags | #flags | [Info](https://man7.org/linux/man-pages/man2/sendto.2.html) Send a message on a socket |
|**sys_recvmsg**|47| #sockfd | $msg flags | #flags | [Info](https://man7.org/linux/man-pages/man2/sendto.2.html) Recieve a message from a socket |
|**sys_shutdown**|48| #sockfd | #how | | [Info](https://man7.org/linux/man-pages/man2/shutdown.2.html) Shut down part of a full-duplex connection |
|**sys_bind**|49| #sockfd | $address | #addrlen | [Info](https://man7.org/linux/man-pages/man2/sendto.2.html) Bind a name to a socket |
|**sys_listen**|50| #spckfd | #backlog | | [Info](https://man7.org/linux/man-pages/man2/listen.2.html) Listen for connections on a socket |
|**sys_getsockname**|51| #sockfd | $buffer | #addrlen | [Info](https://man7.org/linux/man-pages/man2/getsockname.2.html) Get socket name |
|**sys_getpeername**|52| #sockfd | $buffer | #addrlen | [Info](https://man7.org/linux/man-pages/man2/getpeername.2.html) Get name of connected peer socket |
|**sys_socketpair**|53| #domain | #type | #proto, #sv[2] | [Info](https://man7.org/linux/man-pages/man2/socketpair.2.html) Create a pair of connected sockets |
|**sys_setsockopt**|54| #sockfd, #level | #optname, $optval | #optlen | [Info](https://man7.org/linux/man-pages/man2/getsockopt.2.html) Set options on a socket |
|**sys_getsockopt**|55| #sockfd, #level | #optname, $optval | #optlen | [Info](https://man7.org/linux/man-pages/man2/getsockopt.2.html) Get options on a socket |
|**sys_clone**|56| | | | [Info](https://man7.org/linux/man-pages/man2/clone.2.html) Create a child process |
|**sys_fork**|57| void | | | [Info](https://man7.org/linux/man-pages/man2/fork.2.html) Create a child process |
|**sys_vfork**|58| void | | | [Info](https://man7.org/linux/man-pages/man2/clone.2.html) Create a child process and block parent |
|**sys_execve**|59| $address | $args | $envp | [Info](https://man7.org/linux/man-pages/man2/clone.2.html) Execute a program |
|**sys_exit**|60| #status | | | [Info](https://man7.org/linux/man-pages/man2/exit.2.html) Terminate the calling process |
|**sys_wait4**|61| $wstatus, #options | $rusage, #pid | $wstatus, #options | [Info](https://man7.org/linux/man-pages/man2/wait4.2.html) Wait for process to change state, BSD style |
|**sys_kill**|62| #pid | #signal | | [Info](https://man7.org/linux/man-pages/man2/kill.2.html) Send a signal to a process |
|**sys_uname**|63| $buffer | | | [Info](https://man7.org/linux/man-pages/man2/uname.2.html) Get name and information about current kernel |
|**sys_semget**|64| #key | #nsems | #semflag | [Info](https://man7.org/linux/man-pages/man2/semget.2.html) Get a system v semaphore set identifier |
|**sys_semop**|65| #semid | $sops | #nsops | [Info](https://man7.org/linux/man-pages/man2/semop.2.html) System V semaphore operations |
|**sys_semctl**|66| #semid | #semnum | #cmd | [Info](https://man7.org/linux/man-pages/man2/semctl.2.html) System V semaphore control operations |
|**sys_shmdt**|67| $shmaddr | | | [Info](https://man7.org/linux/man-pages/man2/shmdt.2.html) System V shared memory operations |
|**sys_msgget**|68| #key | #msgflag | | [Info](https://man7.org/linux/man-pages/man2/msgget.2.html) Get a system v message queue ID |
|**sys_msgsnd**|69| #msqid | $msgp | #msgsz, #msgflag | [Info](https://man7.org/linux/man-pages/man2/msgsnd.2.html) System V message queue operations |
|**sys_msgrcv**|70| #msqid, $msgp | #msgsz, #msgtyp | #msgflag | [Info](https://man7.org/linux/man-pages/man2/msgsnd.2.html) System V message queue operations |
|**sys_msgctl**|71| #msqid | #cmd | $buffer | [Info](https://man7.org/linux/man-pages/man2/msgctl.2.html) System V message control operations |
|**sys_fcntl**|72| #fd | #cmd | #args | [Info](https://man7.org/linux/man-pages/man2/fcntl.2.html) Manipulate file descriptor |
|**sys_flock**|73| #fd | #operation | | [Info](https://man7.org/linux/man-pages/man2/flock.2.html) Aply or remove an advisory lock on an open file |
|**sys_fsync**|74| #fd | | | [Info](https://man7.org/linux/man-pages/man2/fsync.2.html) Synchronize a file's om-core state with storage device |
|**sys_fdatasync**|75| #fd | | | [Info](https://man7.org/linux/man-pages/man2/fsync.2.html) Synchronize a file's om-core state with storage device |
|**sys_truncate**|76| $address | #length | | [Info](https://man7.org/linux/man-pages/man2/truncate.2.html) Truncate a file to a specific length |
|**sys_ftruncate**|77| #fd | #length | | [Info](https://man7.org/linux/man-pages/man2/truncate.2.html) Truncate a file to a specific length |
|**sys_getdents**|78| #fd | $address | #count | [Info](https://man7.org/linux/man-pages/man2/getdents.2.html) Get directory entries |
|**sys_getcwd**|79| $buffer | #size | | [Info](https://man7.org/linux/man-pages/man2/getcwd.2.html)  CWD is returned to the $buffer of length #size) |
|**sys_chdir**|80| $address | | | [Info](https://man7.org/linux/man-pages/man2/chdir.2.html)   Change directory |
|**sys_fchdir**|81| #fd | | | [Info](https://man7.org/linux/man-pages/man2/fchdir.2.html) |
|**sys_rename**|82| #oldname | #newname | | [Info](https://man7.org/linux/man-pages/man2/rename.2.html)   Change the name or location of a file |
|**sys_mkdir**|83| $buffer | #fd | | [Info](https://man7.org/linux/man-pages/man2/mkdir.2.html)   Make a directory |
|**sys_rmdir**|84| $address | | | [Info](https://man7.org/linux/man-pages/man2/rmdir.2.html)   Remove a directory |
|**sys_creat**|85| $address | #perms or #mode | | [Info](https://man7.org/linux/man-pages/man2/creat.2.html) Open and possibly create a file |
|**sys_link**|86| #oldname | #newname | | [Info](https://man7.org/linux/man-pages/man2/link.2.html)   Make a new name for a file (new addr) |
|**sys_unlink**|87| #address | | | [Info](https://man7.org/linux/man-pages/man2/unlinkat.2.html)   Delete a name (addr) and possibly the file it refers to |
|**sys_symlink**|88| $target | $linkpath | | [Info](https://man7.org/linux/man-pages/man2/symlink.2.html) Make a new name for a file |
|**sys_readlink**|89| $address | $buffer | #len | [Info](https://man7.org/linux/man-pages/man2/readlink.2.html) Read value of a symbolic link |
|**sys_chmod**|90| $address | #perms or #mode | | [Info](https://man7.org/linux/man-pages/man2/chmod.2.html) Change Permissions of a file |
|**sys_fchmod**|91| #fd | #perms or #mode | | [Info](https://man7.org/linux/man-pages/man2/fchmod.2.html) Change Permissions of a file |
|**sys_chown**|92| $address | #owner | #group | [Info](https://man7.org/linux/man-pages/man2/chown.2.html) Change Ownership of a file |
|**sys_fchown**|93| #fd | #owner | #group | [Info](https://man7.org/linux/man-pages/man2/fchown.2.html) Change Ownership of a file |
|**sys_lchown**|94| $address | #owner | #group | [Info](https://man7.org/linux/man-pages/man2/chown.2.html) Change Ownership of a file |
|**sys_umask**|95| #mask | | | [Info](https://man7.org/linux/man-pages/man2/umask.2.html) Set a file mode creation mask |
|**sys_gettimeofday**|96| #tv or #timeval | #tz or #timezone | | [Info](https://man7.org/linux/man-pages/man2/settimeofday.2.html) Get time of day |
|**sys_getrlimit**|97| | | | [Info](https://man7.org/linux/man-pages/man2/getrlimit.2.html) Get resource limit |
|**sys_getrusage**|98| | | | [Info](https://man7.org/linux/man-pages/man2/getrusage.2.html) Get resource usage |
|**sys_sysinfo**|99| $info | | | [Info](https://man7.org/linux/man-pages/man2/sysinfo.2.html) Return system information |
|**sys_times**|100| $buffer | | | [Info](https://man7.org/linux/man-pages/man2/times.2.html) Get process times |
|**sys_ptrace**|101| 
|**sys_getuid**|102| 
|**sys_syslog**|103| 
|**sys_getgid**|104| 
|**sys_setuid**|105| 
|**sys_setgid**|106| 
|**sys_geteuid**|107| 
|**sys_getegid**|108| 
|**sys_setpgid**|109| 
|**sys_getppid**|110| void | | | [Info](https://man7.org/linux/man-pages/man2/getpid.2.html) Get process ID |
|**sys_getpgrp**|111| 
|**sys_setsid**|112| 
|**sys_setreuid**|113| 
|**sys_setregid**|114| 
|**sys_getgroups**|115| 
|**sys_setgroups**|116| 
|**sys_setresuid**|117| 
|**sys_getresuid**|118| 
|**sys_setresgid**|119| 
|**sys_getresgid**|120| 
|**sys_getpgid**|121| 
|**sys_setfsuid**|122| 
|**sys_setfsgid**|123| 
|**sys_getsid**|124| 
|**sys_capget**|125| 
|**sys_capset**|126| 
|**sys_rt_sigpending**|127| 
|**sys_rt_sigtimedwait**|128| 
|**sys_rt_sigqueueinfo**|129| 
|**sys_rt_sigsuspend**|130| 
|**sys_sigaltstack**|131| 
|**sys_utime**|132| 
|**sys_mknod**|133| 
|**sys_uselib**|134| 
|**sys_personality**|135| 
|**sys_ustat**|136| 
|**sys_statfs**|137| 
|**sys_fstatfs**|138| 
|**sys_sysfs**|139| 
|**sys_getpriority**|140| 
|**sys_setpriority**|141| 
|**sys_sched_setparam**|142| 
|**sys_sched_getparam**|143| 
|**sys_sched_setscheduler**|144| 
|**sys_sched_getscheduler**|145| 
|**sys_sched_get_priority_max**|146| 
|**sys_sched_get_priority_min**|147| 
|**sys_sched_rr_get_interval**|148| 
|**sys_mlock**|149| 
|**sys_munlock**|150| 
|**sys_mlockall**|151| 
|**sys_munlockall**|152| 
|**sys_vhangup**|153| 
|**sys_modify_ldt**|154| 
|**sys_pivot_root**|155| 
|**sys__sysctl**|156| 
|**sys_prctl**|157| 
|**sys_arch_prctl**|158| 
|**sys_adjtimex**|159| 
|**sys_setrlimit**|160| 
|**sys_chroot**|161| 
|**sys_sync**|162| 
|**sys_acct**|163| 
|**sys_settimeofday**|164| 
|**sys_mount**|165| 
|**sys_umount2**|166| 
|**sys_swapon**|167| 
|**sys_swapoff**|168| 
|**sys_reboot**|169| 
|**sys_sethostname**|170| 
|**sys_setdomainname**|171| 
|**sys_iopl**|172| 
|**sys_ioperm**|173| 
|**sys_create_module**|174| 
|**sys_init_module**|175| 
|**sys_delete_module**|176| 
|**sys_get_kernel_syms**|177| 
|**sys_query_module**|178| 
|**sys_quotactl**|179| 
|**sys_nfsservctl**|180| 
|**sys_getpmsg**|181| 
|**sys_putpmsg**|182| 
|**sys_afs_syscall**|183| 
|**sys_tuxcall**|184| 
|**sys_security**|185| 
|**sys_gettid**|186| 
|**sys_readahead**|187| 
|**sys_setxattr**|188| 
|**sys_lsetxattr**|189| 
|**sys_fsetxattr**|190| 
|**sys_getxattr**|191| 
|**sys_lgetxattr**|192| 
|**sys_fgetxattr**|193| 
|**sys_listxattr**|194| 
|**sys_llistxattr**|195| 
|**sys_flistxattr**|196| 
|**sys_removexattr**|197| 
|**sys_lremovexattr**|198| 
|**sys_fremovexattr**|199| 
|**sys_tkill**|200| 
|**sys_time**|201| 
|**sys_futex**|202| 
|**sys_sched_setaffinity**|203| 
|**sys_sched_getaffinity**|204| 
|**sys_set_thread_area**|205| 
|**sys_io_setup**|206| 
|**sys_io_destroy**|207| 
|**sys_io_getevents**|208| 
|**sys_io_submit**|209| 
|**sys_io_cancel**|210| 
|**sys_get_thread_area**|211| 
|**sys_lookup_dcookie**|212| 
|**sys_epoll_create**|213| 
|**sys_epoll_ctl_old**|214| 
|**sys_epoll_wait_old**|215| 
|**sys_remap_file_pages**|216| 
|**sys_getdents64**|217| 
|**sys_set_tid_address**|218| 
|**sys_restart_syscall**|219| 
|**sys_semtimedop**|220| #semid | $sops | #nsops, $timeout | [Info](https://man7.org/linux/man-pages/man2/semop.2.html) System V semaphore operations |
|**sys_fadvise64**|221| 
|**sys_timer_create**|222| 
|**sys_timer_settime**|223| 
|**sys_timer_gettime**|224| 
|**sys_timer_getoverrun**|225| 
|**sys_timer_delete**|226| 
|**sys_clock_settime**|227| 
|**sys_clock_gettime**|228| 
|**sys_clock_getres**|229| 
|**sys_clock_nanosleep**|230| 
|**sys_exit_group**|231| 
|**sys_epoll_wait**|232| 
|**sys_epoll_ctl**|233| 
|**sys_tgkill**|234| 
|**sys_utimes**|235| 
|**sys_vserver**|236| 
|**sys_mbind**|237| 
|**sys_set_mempolicy**|238| 
|**sys_get_mempolicy**|239| 
|**sys_mq_open**|240| 
|**sys_mq_unlink**|241| 
|**sys_mq_timedsend**|242| 
|**sys_mq_timedreceive**|243| 
|**sys_mq_notify**|244| 
|**sys_mq_getsetattr**|245| 
|**sys_kexec_load**|246| 
|**sys_waitid**|247| 
|**sys_add_key**|248| 
|**sys_request_key**|249| 
|**sys_keyctl**|250| 
|**sys_ioprio_set**|251| 
|**sys_ioprio_get**|252| 
|**sys_inotify_init**|253| 
|**sys_inotify_add_watch**|254| 
|**sys_inotify_rm_watch**|255| 
|**sys_migrate_pages**|256| 
|**sys_openat**|257| #dirfd | $address | #flags, #mode | [Info](https://man7.org/linux/man-pages/man2/creat.2.html) Open and possibly create a file |
|**sys_mkdirat**|258| 
|**sys_mknodat**|259| 
|**sys_fchownat**|260| 
|**sys_futimesat**|261| 
|**sys_newfstatat**|262| 
|**sys_unlinkat**|263| 
|**sys_renameat**|264| 
|**sys_linkat**|265| 
|**sys_symlinkat**|266| 
|**sys_readlinkat**|267| 
|**sys_fchmodat**|268| 
|**sys_faccessat**|269| 
|**sys_pselect6**|270| 
|**sys_ppoll**|271| 
|**sys_unshare**|272| 
|**sys_set_robust_list**|273| 
|**sys_get_robust_list**|274| 
|**sys_splice**|275| 
|**sys_tee**|276| 
|**sys_sync_file_range**|277| 
|**sys_vmsplice**|278| 
|**sys_move_pages**|279| 
|**sys_utimensat**|280| 
|**sys_epoll_pwait**|281| 
|**sys_signalfd**|282| 
|**sys_timerfd_create**|283| 
|**sys_eventfd**|284| 
|**sys_fallocate**|285| 
|**sys_timerfd_settime**|286| 
|**sys_timerfd_gettime**|287| 
|**sys_accept4**|288| #sockfd | $address | #addrlen, #flags | [Info](https://man7.org/linux/man-pages/man2/accept.2.html) Accept a connection on a socket |
|**sys_signalfd4**|289| 
|**sys_eventfd2**|290| 
|**sys_epoll_create1**|291| 
|**sys_dup3**|292| 
|**sys_pipe2**|293| 
|**sys_inotify_init1**|294| 
|**sys_preadv**|295| 
|**sys_pwritev**|296| 
|**sys_rt_tgsigqueueinfo**|297| 
|**sys_perf_event_open**|298| 
|**sys_recvmmsg**|299| 
|**sys_fanotify_init**|300| 
|**sys_fanotify_mark**|301| 
|**sys_prlimit64**|302| 
|**sys_name_to_handle_at**|303| 
|**sys_open_by_handle_at**|304| 
|**sys_clock_adjtime**|305| 
|**sys_syncfs**|306| 
|**sys_sendmmsg**|307| 
|**sys_setns**|308| 
|**sys_getcpu**|309| 
|**sys_process_vm_readv**|310| 
|**sys_process_vm_writev**|311| 
|**sys_kcmp**|312| 
|**sys_finit_module**|313| 
|**sys_sched_setattr**|314| 
|**sys_sched_getattr**|315| 
|**sys_renameat2**|316| 
|**sys_seccomp**|317| 
|**sys_getrandom**|318| 
|**sys_memfd_create**|319| 
|**sys_kexec_file_load**|320| 
|**sys_bpf**|321| 
|**stub_execveat**|322| 
|**userfaultfd**|323| 
|**membarrier**|324| 
|**mlock2**|325| 
|**copy_file_range**|326| 
|**preadv2**|327| 
|**pwritev2**|328| 
|**pkey_mprotect**|329| 
|**pkey_alloc**|330| 
|**pkey_free**|331| 
|**statx**|332| 
|**io_pgetevents**|333| 
