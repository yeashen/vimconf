# Vim插件安装
	
## 1. 介绍
主要为vim的各种插件配置，其中也包括samba配置，tmux配置，vimperator配置，zsh配置等

## 2. 安装
首先需要确保你已经安装了git，然后安装vundle，输入以下命令安装：

windows下：

	$ git clone https://github.com/gmarik/vundle.git ~/_vimfile/bundle/vundle

Linux下：

	$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

安装完成后，把.vimrc拷贝到～/目录下,修改vimrc, 按照当前系统类型打开和关闭相应的配置。然后打开vim, 在normal模式下输入命令：BunbleInstall
之后进入插件自动下载安装界面，等待安装完成。

*【注】在打开vim时会提示nerdtree等没有安装，可以先忽略*

安装完成后，命令窗口会输出Done!, 按:q退出安装即可，安装完成后，在bundle目录下会产生插件的相应文件夹。到此，vim 的插件安装完成。

## 3.使用
下面以一个内核代码编辑及查看的环境来说明使用：
### 3.1 生成数据文件
我工程用到的数据文件主要包括三个文件：
	1. tags			-ctags 文件标签信息数据文件，主要用于在整个工程中的函数或者变量中跳转
	2. cscope.out	-cscope数据库文件，主要用于在搜索函数或者变量的定义及调用
	3. filenametags	-lookupfile数据文件，主要用于lookupfile插件在整个工程中快速搜索文件，速度很快
在.zshrc中已经将三个文件生成的命令alias成三个简短命令，分别对应的是：cts, csp,lpf。只需要在当前的目录输入三个命令即可，在生成的过程中，如果工程代码比较大的，则生成的时间比较长。
### 3.2 操作
窗口基本布局
终端的窗口布局主要分为上下两个窗口，其中上部分为代码编辑窗口，下部分为shell操作接口，通过tmux来垂直分屏。
代码编辑窗口沿袭source insight代码阅读器的风格：
	最顶部为文件buffer窗口
	最左边为Tags阅览窗口
	最右边为工程目录树阅览窗口
	中间为代码编辑窗口。

1. 打开窗口，加载数据文件
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/1.gif)

在vim命令模式下键入：
	:set tags=/你的tags文件的绝对路径/tags
	:cs add cscope.out
	:let g:LookupFile_TagExpr='"./filenametags"' 
2. 查找打开文件
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/2.gif)

加载好数据文件后，后面就可以按F5键来打开文件搜索窗口，输入文件名的同时下拉显示文件
3. 文件切换，各个窗口跳转
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/3.gif)

同时按下Ctrl+w后， j/k/h/l控制在上半部的窗口间跳转的方向
同时按下Ctrl+b后， j/k/h/l控制下上半部和下半部窗口间跳转方向
4. 代码补全提示
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/4.gif)

在加载数据文件后，数据变量名或者类后，会自动代码补全
5. 多重选取
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/5.gif)

相当于Subline text的多重选择
Ctrl+m 选中一个
Ctrl+p 放弃一个，回到上一个
Ctrl+x 跳过当前选中，选中下一个
Esc 退出
6. 快速跳转
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/6.gif)

按两次空格+w 光标以下部分选择
按两次空格+b 光标以上部分选择
7. 代码模板快速插入
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/7.gif)

常用的for while等，可以在vim-snipt/c.snippets中按例子自己添加
8. 主题管理及选择
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/8.gif)

vim命令模式键入： ColorSchemeExplorer
9. 快速注释
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/9.gif)

\ca，在可选的注释方式之间切换，比如C/C++ 的块注释/* */和行注释//
\cc，注释当前行
\c，切换注释/非注释状态
\cs，以”性感”的方式注释
\cA，在当前行尾添加注释符，并进入Insert模式
\cu，取消注释

10. 关键字查找
![image](https://github.com/yeashen/vimconf/raw/master/screenshots/10.gif)

依次按下以下键：
\ss   —— 查找这个C符号
\sg  —— 查找这个定义
\sd  —— 查找被这个函数调用的函数（们）
\sc  —— 查找调用这个函数的函数（们）
\st   —— 查找这个字符串
\se  —— 查找这个egrep匹配模式
\sf   —— 查找这个文件
\si   —— 查找#include这个文件的文件（们）

co	打开搜索结果窗口
cp	隐藏搜索结果窗口

## 4.备注
vim在写.mk文件实时预览时，需要安装其它插件，运行如下命令：

	sudo apt-get install ruby1.9.1-dev 

	sudo gem install pygments.rb

	sudo gem install redcarpet

	sudo apt-get install npm

	sudo npm -g install instant-markdown-d`
