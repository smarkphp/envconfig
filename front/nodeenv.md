
# Agenda

## Node 在Window、Mac和Linux环境下的安装和配置

Nodejs、Npm、Yarn三者关系

|名称|描述|作用|
|--|--|--|
|Nodejs|Nodej安装好后,npm也一起安装好了||
|npm|网站-注册表-CLI|依赖包统一下载管理|
|Yarn|快速、可靠、安全的以来管理工具,全新的JavaScript包管理工具|通过npm来安装|


一、安装:Node之一

+ [中文Node下载地址](http://nodejs.cn/download/)

1.1 windows下安装方式

Window用户安装方式非常简单，几乎就是傻瓜式安装，打开官网链家，直接下载对应的版本即可，然后双击进行安装，window用户默认下载的是.msi安装包，可以直接安装，并且自动配置环境变量；

1.2 Mac下安装方式

Mac用户同样很简单，苹果用户打开链家下载.pkg安装包即可，如果安装过程被拒绝，是因为这个软件不是通过app store下载的，属于市场外的软件，大家只需要输入管理员密码即可安装，同样会自动配置环境变量；

1.3 Linux下安装方式

+ [打开链接](http://nodejs.cn/download/)选择Linux二进制的文件进行下载, 根据当前处理器来选择是X64还是ARM

+ 解压: tar xvf node-v10.16.2-linux-x64.tar.xz, 将其存放到指定位置

+ 创建软链接:

```软连

ln -s /soft/node-v10.16.2-linux-x64/bin/node /usr/local/bin/node

ln -s /soft/node-v10.16.2-linux-x64/bin/npm /usr/local/bin/npm

```

1.4 安装位置

```command
which node
```

|系统|位置|样例|
|--|--|--|
|Mac|/usr/local/bin/node|/usr/local/bin/node|
|window|C盘的Programfile|/usr/local/bin/npm|



二、安装验证

```setup verify
node -v
npm -v
```

三、卸载: Mac

3.0  比较繁琐的是/usr/local/lib和/usr/local/bin这两个文件夹，全局安装的npm包会有很多软链接，需要仔细删除

3.1  首先运行脚本

+ step1:循环删除

```unindstall-1

sudo lsbom -f -l -s -pf /var/db/receipts/org.nodejs.node.pkg.bom | while read f; do rm -rf ${f:1}; done
```

+ step2: /usr/local/lib删除

```rm-2
sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*

cd /usr/local/lib
rm -rf node*
```

+ step3: /usr/local/include删除

```rm-3
 进入 /usr/local/include删除含有node和node_modules的目录

 cd /usr/local/include

 sudo  rm -rf node*
```

+ step4: brew删除

```brew安装的则
    brew uninstall node
```

+ step5: 个人主文件夹，检查各种local、lib、includes文件夹

```rm
删除名字含有node和node_modules的文件夹
```

+ step6: 进入/usr/local/bin删除node执行文件

``` /usr/local/bin删除node文件
 cd /usr/local/bin
 sudo rm -rf /usr/local/bin/npm
 sudo rm -rf /usr/local/bin/node
 ls -las 仔细查看，全局安装的npm包一般会在这个目录下创建软连接，发现就删除
```

+ step7: 其它清理工作

```others
  sudo rm -rf /usr/local/share/man/man1/node.1
  sudo rm -rf /usr/local/lib/dtrace/note.d
  sudo rm -rf ~/.npm
```

四、安装Node

+ 对Node 进行升降级通常基于以下原因
  + 服务器和本地配置不一致
  + Node的新功能尝鲜
  + NPM插件的兼容问题
  
+ 安装NPM插件n, 通过n模块来管理Node的版本;
  + npm/cnpm install -g 全局安装n模块
  + n stable 或者 sudo n stable 安装稳定版本
  + n latest 或者 sudo n latest 安装最新的node版本
  + n v10.16.2 可以指定安装对应的版本
  + 卸载，使用n rm v10.16.2来删除当前node版本

+ 使用nvm来管理node
  + 下载包安装到电脑中(window和mac各不同)
  + windows安装..
  + mac安装:

  ```mac_install
    1、git clone https://github.com/creationix/nvm.git ${ddir}/nvmb
    2、可选增加: export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node
    3、.zshrc中增加: source ${ddir}/nvmb/nvm.sh
  ```

  + nvm安装node版本: nvm install 10.16.2
  + nvm查看所有版本: nvm ls
  + nvm use 10.16.2可以自由切换版本

五、Nvm安装Node的常用命令

+ STF的Node安装建议使用8.x版本

+ node

```node安装
   nvm install 8.14
   nvm use 切换使用指定版本的node: nvm use 8.14.0
   nvm use --delete-prefix v15.5.0 --silent <???>
   node --version , npm --version查看指定版本

   nvm ls
   nvm ls-remote
   nvm alias default V****(使用默认版本)

```

+ yarn安装

```yarn
    npm config set registry https://registry.npm.taobao.org/
    npm install -g yarn
    yarn config set registry https://registry.npm.taobao.org/
    yarn
    ls /usr/tools/node/v13.6.0/bin/yarn
    ln -s   /usr/tools/node/v13.6.0/bin/yarn  /usr/local/bin/
    yarn -v
```