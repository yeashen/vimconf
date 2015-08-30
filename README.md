# Vim插件安装
	
## 1. 介绍


## 2. 安装
首先需要确保你已经安装了git，然后安装vundle，输入以下命令安装：

windows下：

	$ git clone https://github.com/gmarik/vundle.git ~/_vimfile/bundle/vundle

Linux下：

	$ git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

安装完成后，把.vimrc拷贝到～/目录下,修改vimrc, 按照当前系统类型打开和关闭相应的配置。然后打开vim, 在normal模式下输入命令：InstallBunble
之后进入插件自动下载安装界面，等待安装完成。

*【注】在打开vim时会提示nerdtree等没有安装，可以先忽略*

安装完成后，命令窗口会输出Done!, 按:q退出安装即可，安装完成后，在bundle目录下会产生插件的相应文件夹。到此，vim 的插件安装完成。

## 3.使用

## 4.备注
vim在写.mk文件实时预览时，需要安装其它插件，运行如下命令：

	sudo apt-get install ruby1.9.1-dev 

	sudo gem install pygments.rb

	sudo gem install redcarpet

	sudo apt-get install npm

	sudo npm -g install instant-markdown-d`
