#!/bin/sh
###
 # @Desccription: 
 # @version: 
 # @company: zy
 # @Author: Mark
 # @Date: 2021-01-03 17:42:45
 # @ListenEditors: Mark
 # @LastEditTime: 2021-01-03 17:54:05
### 

#====[SectionI: node/npm卸载]====
#step1
sudo lsbom -f -l -s -pf /var/db/receipts/org.nodejs.node.pkg.bom | while read f; do rm -rf ${f:1}; done

# step2
sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*
cd /usr/local/lib
rm -rf node*

# step3

cd /usr/local/include
sudo  rm -rf node*

# step4

# step5

# step6
cd /usr/local/bin
sudo rm -rf /usr/local/bin/npm
sudo rm -rf /usr/local/bin/node
ls -las 

# step7
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/note.d
sudo rm -rf ~/.npm

# step8-其它
brew uninstall nodejs
sudo rm -rf /usr/local/{bin/{node,npm},lib/node_modules/npm,lib/node,share/man/*/node.*}

#====[nvm卸载]====
#step1: rm rf ~/.nvm

