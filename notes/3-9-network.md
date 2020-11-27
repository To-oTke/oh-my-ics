# 9.9 Network

## Textbook

* 11.1
* 11.2

## Outline

* C / S（Client & Server）开发模式
* 网络

## C - S

### Intro

在 C - S 模型当中，双方的关系是这么定义的：

* 存在单个 Server 进程
* 存在一个或多个 Client 进程
* Server 管理、保存着某些资源
* Client 可以向 Server 提出请求
* Server 就此操作资源，作出回应

![image-20201127154232865](3-9-network.assets/image-20201127154232865.png)

> 注意，C - S 的地位跟「运行在哪里的计算机之上」是无关的。
>
> 或许 Client 跟 Server 之间的通信是走过了网络、走过了 USB、走过了卫星链路。又或者他们执行在同一颗 CPU 上。

### Device

在 CPU 的眼里，Network 事宜也抽象成对 I/O 设备的操作。

![image-20201127154840341](3-9-network.assets/image-20201127154840341.png)

> 读写比内存慢的统统视为外设——CPU

## Network

网络，和计算机一样是由森严的等级机制构建起来的。

### v1: Origin

最早的「网络」，那是物理存在的。把一群电脑用网线连起来，他们之间就能相互通信——这算是网络。

![image-20201127161626144](3-9-network.assets/image-20201127161626144.png)

这就和计算机的总线很类似：所有人都能看到所有的数据包；大家凭自觉（道义）来确保数据包的正确传输。

#### Adapter Address

每个网络适配器有一个独一无二的 ID：48 Bit 的地址。

把他们分成六组，每组一个字节（8-Bit Guy）写成这样

```
00:16:ea:e3:54:e6
```

突然就有感觉了。

#### Host

每台连接到互联网上的计算机，都叫做一个 Host。

#### Frame

每一次，由一个 Host 发向另一个 Host 的 Bits，构成一个 Frame（帧）。

> 之所以构成一个 Frame，是因为他有语义。

每个 Frame 都包含：

* 魔法头，用于识别 Frame 格式、版本、来路、去向
* Frame 本体长度

这两部分之後就是裸字节 Payload 了。

### v2: Bridged

随着网络规模越来越大，把计算机两两链接也不太现实。

所以，自然而然地形成了「网络中枢」，各个边缘 Host 连接到次中枢（Hub），这就使得整个系统可扩展了。

![image-20201127161607993](3-9-network.assets/image-20201127161607993.png)

中枢节点之间的传输速度自然要很快；到次中心减速；到 Host 那就另说了。

> 注意，Host 之间的链接并不一定会走中枢。
>
> 例如，Host A 和 Host B 之间的通信只要走 Hub 一遭就够了；不必要上升到 Bridge X。

#### WAN

> 所谓 Wide-Area Network

本地的小破网用 LAN 也就够了。但是如果各大中枢之间也用 LAN，岂不卡爆？所以就提出了 WAN 连接方法。

我们把网络中「超脱于 Host」上层的那些机器统称为 Routers——因为他们自身不作为任何数据包的起始和终结，只是负责把他们传送到正确的位置。

Routers 之间就采用了 WAN 方式组织——大批量、高效率。

> 不能再像 LAN 那样一个一个栈帧慢慢发了。那太慢了。

#### Protocol Software

既然 LAN 和 WAN 本质上是两套不同的协议，那么一个数据包是如何穿越他们传输的？

回答：Routers 上包含有特制的 Protocol Software，会在数据包在层级转换时自动进行变换。