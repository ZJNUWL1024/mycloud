# mycloud
类似icloud的功能，通过脚本简单平替，适用于mac

## 功能介绍
- 监控文件夹内所有文件/单个文件
- 文件改动触发同步到云端（本地 -> 云端）
- 目前没有想好合适的时间点触发拉取文件到本地，所以需要自己手动拉取（云端 -> 本地）

## 启动方法
```shell
./start.sh [想要监控的文件夹路径]
```

## 拉取方法
```shell
./scp.sh [想要存储的文件夹路径] -d
```

***脚本中目前用的是本人自己的服务器，需要自行替换，在scp.sh中***
