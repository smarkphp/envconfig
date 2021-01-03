<!--
 * @Desccription: 
 * @version: 
 * @company: zy
 * @Author: Mark
 * @Date: 2021-01-03 20:35:31
 * @ListenEditors: Mark
 * @LastEditTime: 2021-01-03 21:03:24
-->
# Agenda

## 构建命令
 
+ npm install gitbook-cli -g
  + gitbook -V
  + 安装历史版本: gitbook fetch beta
  + 初始化书籍:   gitbook init
  + 构建:        gitbook build
  + Debugging: gitbook build ./ --log=debug --debug
  + 启动服务:    gitbook serve

+ 其它:
  + 生成静态网页:  gitbook build
  + 生成静态网页并运行服务器: gitbook serve
  + 生成指定gitbook版本，本地没有会下载: gitbook build --gitbook=2.0.1
  + 列出本地所有的gitbook版本: gitbook ls
  + 列出远程可用的gitbook版本: gitbook ls-remote
  + 更新到gitbook的最新版本:   gitbook update
  + 卸载对应的gitook版本:      gitbook uninstall 2.0.1
  + 指定log的级别:            gitbook build --log=debug
  + 输出错误信息:             gitbook build --debug
 
