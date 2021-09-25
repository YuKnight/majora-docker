# Majora

Majora是一套完整的代理ip建设集群方案，为代理IP池供应链系统，如果您拥有大批量的可以上网的网络设备（VPS服务器、路由器设备、手机等移动设备），那么你可以使用这些网络设备方便的构建您的代理IP池。

## Majora可以满足的应用场景如下：

- 您是代理ip供应商，拥有大量VPS节点，则你可以通过Majora快速搭建您的代理IP池
- 您可以将Majora终端程序刷入到路由器等网络设备中，则您可以通过Majora构建您的家庭ip资源池或者ADSL IP资源池
- 您可以安装Majora的apk，或者使用Majora的sdk集成到手机程序中，则您可以通过Majora快速搭建您的手机出口IP资源池(如果您的手机有root，那么还可以拥有定时重播的功能)

## Majora功能特点

- 使用简单：所有终端节点都是一键安装即可接入代理ip集群，无需服务器复杂的参数配置
- 多供应商和采购商概念：您可以让多个持有网络设备的供应商同时接入Majora系统，同时可以让多个ip使用方接入Majora的IP资源。Majora记录了每个供应者和消费者的详细账单流水，您可以根据流水对供应商和采购商进行费用结算
- 协议完整：本系统完整支持http/https/socks5代理协议，所有代理端口均自动识别代理协议。无需用户手动选择端口
- ip质量可靠性：Majora暴露端口范围，以隧道代理的方式提供服务。并提供内存级别的IP资源失败路由功能。除极少情况（被中断请求中的链接），Majora保证供应端每个代理端口均可提供对等的稳定代理服务。永远不会出现代理链接不上，或者连接上无法使用的情况
- 多网络设备支持：支持服务器（VPS)、手机、路由器、PC(普通windows或者mac电脑)
- 高并发和高带宽：NIO框架天然支持非常高的吞吐，且Majora的前序系统(Rogue)已经经过单节点百M的带宽压力

[完整文档:https://oss.virjar.com/majora](https://oss.virjar.com/majora)

## Docker 部署支持

### Docker运行

Docker启动

```sh
# majora-lite
docker run -p 5879:5879 -p 5875:5875 \
-p 30000-30100:30000-30100 \
--restart=always --name=majora-lite -d registry.cn-beijing.aliyuncs.com/virjar/majora:lite

# majora-pro
docker run -p 5879:5879 -p 5875:5875 \
-p 30000-30100:30000-30100 \
--restart=always --name=majora-pro -d registry.cn-beijing.aliyuncs.com/virjar/majora:pro

```

- WORKDIR: /opt/majora
- 配置文件：/opt/majora/conf/majora.properties  可以使用 -v /srv/majora-conf:/opt/majora/conf 替换掉配置文件
- 日志配置：/opt/majora/conf/logback.xml 同上
- 端口号映射请保持和配置文件一致
- 查看服务启动是否正常 curl "http://自己的IP:5875/mojora-admin-api/ListClient"



### Docker-compose
- docker-compose up -d 

### 构建镜像
- chmod +x build-image.sh && ./build-image.sh
