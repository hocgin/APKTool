## APK Tools
> 主要集成对android apk 一键反编译为 smail文件/jar文件/解压后资源等文件  
> 重新打包

## 目录结构介绍
.  
├── APK Bale.sh     [重新打包脚本]  
├── APK Crack.sh    [反编译脚本]  
├── clear.sh        [重置目录结构]  
├── jar             [生成jar包存放处]  
├── lib             [引用文件]  
├── README.md  
├── smail           [生成smail文件存放处]  
└── unzip           [解压文件存放处]  


## Use
```shell
# 反编译
sh "APK Crack.sh" [app.apk]

# 重新打包
sh "APK Bale.sh" [smail dir]

# 重置目录结构
sh clear.sh

```
