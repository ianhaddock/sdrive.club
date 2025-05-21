# zRam

"Zram... is a Linux kernel module for creating a compressed block device in RAM, i.e. a RAM disk with on-the-fly disk compression." [(1)][1]

Zram is used over zswap or other solutions, along with changes to swappiness (see sysctl role), to keep as much as possible in memory while being as efficient as possible with the resources available and remain low latency during gameplay. The zram ratio can be adjusted in the vars file to fit. In the current case, we want to squeeze as much as possible out of the small instance before expanding to more expensive options.



[1]:https://en.wikipedia.org/wiki/Zram
