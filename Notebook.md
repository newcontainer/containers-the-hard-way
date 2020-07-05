# Gocker

```sh
make build
sudo ./gocker run alpine /bin/sh
```

```text
Namespace Flag            Isolates
Cgroup    CLONE_NEWCGROUP Cgroup root directory
IPC       CLONE_NEWIPC    System V IPC,POSIX message queues
Network   CLONE_NEWNET    Network devices,stacks, ports, etc.
Mount     CLONE_NEWNS     Mount points
PID       CLONE_NEWPID    Process IDs
Time      CLONE_NEWTIME   Boot and monotonic clocks
User      CLONE_NEWUSER   User and group IDs
UTS       CLONE_NEWUTS    Hostname and NIS domain name
```

## 问题

### namespace 实现原理

> [Namespaces in operation, part 1: namespaces overview](https://lwn.net/Articles/531114/)

1. clone
2. unshare
3. setns

#### network namespace 工作细节

> [Namespaces in operation, part 7: Network namespaces](https://lwn.net/Articles/580893/)

1. nat
2. run container in network namespace

## docker 基本实现

docker 如何实现 docker build 的

## ref

- clone, unshare, setns
- sudo unshare --fork --pid --mount-proc /bin/bash
- /proc/filesystems
- [/proc/slabinfo](https://man7.org/linux/man-pages/man5/slabinfo.5.html)
[Namespaces in operation, part 1: namespaces overview](https://lwn.net/Articles/531114/)
- [container-LCE: The failure of operating systems and how we can fix it](https://lwn.net/Articles/524952/)

- [libvirt](https://libvirt.org/)
- [chroot](https://wiki.archlinux.org/index.php/Chroot_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87))
