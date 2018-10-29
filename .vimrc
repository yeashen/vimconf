"*******************************Vundle********************************
set nocompatible "与vi不一致
filetype off
set rtp+=~/.vim/bundle/vundle/ 		"载入特定目录插件
"set rtp+=$HOME/.vim/bundle/vundle/ 	"Windows下
call vundle#rc()
"-------------------------------plugin--------------------------------
"vimscripts账号下的项目直接填写名称即可
"使Tab快捷键具有更快捷的上下文提示功能
Bundle 'Supertab'

"其它需填写用户/资源名称
"使用git来管理插件,更新方便，支持搜索，一键更新，从此只需要一个vimrc走天下
Bundle 'gmarik/vundle'
"代码语法检查     
Bundle 'scrooloose/syntastic'
"一个美观奢华的状态提示栏
Bundle 'Lokaltog/vim-powerline'
"快速浏览和操作Buffer
Bundle 'vim-scripts/minibufexpl.vim'
"自动显示函数原型
Bundle 'vim-scripts/echofunc.vim'
"变量或函数的自动弹出功能
Bundle 'vim-scripts/OmniCppComplete'
"代码块及模板快速插入
Bundle 'SirVer/ultisnips'
"垂直缩进对齐
Bundle 'nathanaelkane/vim-indent-guides'
"画纯文本图
Bundle 'vim-scripts/DrawIt'
"缩进对齐线
Bundle 'Yggdroot/indentLine'
"自动补全
Bundle 'Shougo/neocomplete.vim'
"树形目录
Bundle 'scrooloose/nerdtree'
"浏览源文件的标签，如函数，变量，宏
Bundle 'majutsushi/tagbar'
"快速跳转
Bundle 'easymotion/vim-easymotion'
"Markdown编辑和实时预览
Bundle 'suan/vim-instant-markdown'
"代码模板
Bundle 'honza/vim-snippets'
"头文件/源文件快速切换
Bundle 'vim-scripts/a.vim'
"多重选取内容
Bundle 'terryma/vim-multiple-cursors'
"修改和管理主题
Bundle 'scwbin/csExplorer'
"文件查找
Bundle 'vim-scripts/lookupfile'
"文件查找
Bundle 'vim-scripts/genutils'
"自动文档，生成函数说明等
Bundle 'vim-scripts/DoxygenToolkit.vim'
"快速注释
Bundle 'scrooloose/nerdcommenter'
"solarized
Bundle 'altercation/vim-colors-solarized'
"高亮当前修改git/svn
"Bundle 'mhinz/vim-signify'
"高亮修改git
Bundle 'airblade/vim-gitgutter'
"非github上资源
"----------------------------------------------------------------------
":BundleList          #已安装列表
":BundleInstall(!)    #安装、升级
":BundleSearch(!)     #搜索
":BundleClean(!)      #删除
filetype plugin indent on
"**********************************************************************
"
"********************************插件配置******************************
"
"通用
" leader = '\'
set nu
set syntax=on
set ruler
set foldenable
set foldmethod=manual
set nobackup
set autoindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set showmatch
set smartindent
set ignorecase
set hlsearch
set incsearch
set clipboard+=unnamed
set autoread
set magic
"set fillchars=vert:\ ,stl:\

"set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,latin1
set fileencoding=utf-8
set background=dark
colorscheme desert
"colorscheme torte

set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight CursorLine guibg=ligntblue guifg=black

set cursorcolumn
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"highlight CursorColumn guibg=lightblue ctermbg=lightgreen guifg=black ctermfg=black

"misc
"1. open vim without auto open NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
nmap xd :%!xxd<cr>
nmap dy :Dox<cr>

"2. only remain NERDTree auto close it
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"a.vim
map <C-a> :A<cr>

"quickfix
nmap co :botright copen<CR>
nmap cp :cclose<CR>

"signify
"let g:signify_vcs_list = [ 'git', 'svn' ]
"let g:signify_realtime = 0

"gitgutter
set updatetime=250
let g:gitgutter_sign_column_always = 1

"indent guied
let g:indent_guides_enable_on_vim_startup = 0
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1 
let g:indent_guides_start_level = 2
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
hi IndentGuidesOdd guibg=red ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4

"doxygentoolkit
let g:DoxygenToolkit_briefTag_pre="@brief: "
let g:DoxygenToolkit_paramTag_pre="@param: "
let g:DoxygenToolkit_returnTag="@returns: "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------"
let g:DoxygenToolkit_authorTag="@autuor: "
let g:DoxygenToolkit_dateTag="@date: "
let g:DoxygenToolkit_versionTag="@version: "
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_authorName="Juven"


"indent line
let g_indentLine_loaded = 1
" this set only work with file encode by utf-8, so change to 'c'
"let g:indentLine_char = '┆'
let g:indentLine_char = 'c'
let g:indentLine_fileType = ['c', 'cpp', 'h']

"minibufexpl
let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1   
map <C-TAB>   :MBEbn<CR>
map <C-S-TAB> :MBEbp<CR>
"noremap <C-TAB>   :MBEbf<CR>
"noremap <C-S-TAB> :MBEbb<CR>
"noremap <C-TAB>   <C-W>w
"noremap <C-S-TAB> <C-W>W

"easymotion
let g:EasyMotion_leader_key='<Space>'

"nerdtree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeWinPos="right"
let g:NERDTreeWinSize=25

"power-line
set laststatus=2
set t_Co=256
let g:Powerline_symbols='unicode'

"Taglist
"let Tlist_Show_One_File=1
"let Tlist_Use_Left_Window=1
"let Tlist_Exit_OnlyWindow=1

"Tagbar
nmap <F4> :TagbarToggle<cr>
let g:tagbar_width = 30
let g:tagbar_left = 1

"winmagager
let g:winManagerWidth = 30
let g:winManagerWindowLayout='FileExplorer'
"let g:winManagerWindowLayout='NERDTree'
"nmap wm :WMToggle<cr>:TlistToggle<cr>
"nmap <F12> :WMToggle<cr>:TagbarToggle<cr>
nmap <F12> :NERDTreeToggle<cr>:TagbarToggle<cr>

"CTags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
"set tags=/home/xiaoming/sdk/lichee/linux-3.4/tags
"set tags=/home/xiaoming/zynq/linux-xlnx-xilinx-v2015.3/tags
"set tags=/home/xiaoming/imx6/android/mykk-savage-1.0/kernel_imx/tags
"CScope
"build: cscope -Rbq
set cscopequickfix=s-,c-,d-,i-,t-,e-
"cs add /home/xiaoming/sdk/lichee/linux-3.4/cscope.out /home/xiaoming/sdk/lichee/linux-3.4
"cs add /home/xiaoming/zynq/linux-xlnx-xilinx-v2015.3/cscope.out /home/xiaoming/zynq/linux-xlnx-xilinx-v2015.3
"cs add /home/xiaoming/imx6/android/mykk-savage-1.0/kernel_imx/cscope.out /home/xiaoming/imx6/android/mykk-savage-1.0/kernel_imx

nmap <leader>ss :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <leader>st :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <leader>se :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <leader>sf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <leader>si :cs find i ^<C-R>=expand("<cfile>")<CR><CR>
nmap <leader>sd :cs find d <C-R>=expand("<cword>")<CR><CR>
set cscopequickfix=s-,c-,d-,i-,t-,e-

" lookupfile
let g:LookupFile_MinPatLength = 2               "最少输入2个字符才开始查找
let g:LookupFile_PreserveLastPattern = 0        "不保存上次查找的字符串
let g:LookupFile_PreservePatternHistory = 1     "保存查找历史
let g:LookupFile_AlwaysAcceptFirst = 1          "回车打开第一个匹配项目
let g:LookupFile_AllowNewFiles = 0              "不允许创建不存在的文件
"if filereadable("/home/xiaoming/zynq/filenametags")                "设置tag文件的名字
"	let g:LookupFile_TagExpr = '"/home/xiaoming/zynq/filenametags"'
"endif
"if filereadable("/home/xiaoming/imx6/android/mykk-savage-1.0/kernel_imx/filenametags")                "设置tag文件的名字
"	let g:LookupFile_TagExpr = '"/home/xiaoming/imx6/android/mykk-savage-1.0/kernel_imx/filenametags"'
"endif
"nmap lk LookupFile		"映射LookupFile为,lk
"nmap ll :LUBufs            "映射LUBufs为,ll
"nmap lw :LUWalk            "映射LUWalk为,lw

nmap <leader>ct :set tags=tags<CR>
nmap <leader>cv :cs add cscope.out<CR>
nmap <leader>cf :let g:LookupFile_TagExpr='"filenametags"'<CR>

"complete
set completeopt=longest,menu
"let g:SuperTabDefaultCompletionType="context"

let OmniCpp_MayCompleteDot = 1 " autocomplete with .
let OmniCpp_MayCompleteArrow = 1 " autocomplete with ->
let OmniCpp_MayCompleteScope = 1 " autocomplete with ::
let OmniCpp_SelectFirstItem = 2 " select first item (but don't insert)
let OmniCpp_NamespaceSearch = 2 " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr = 1 " show function prototype  in popup window
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespaces=["std"]

"neocomplete
let g:neocomplete_enable_at_startup=1

"vim-snippet
"let g:UltiSnipsSnippetDirectories=['UltiSnips']
"let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
let g:UltiSnipsExpandTrigger = '<leader><Tab>'
let g:UltiSnipsListSnippets = '<C-Tab>'
let g:UltiSnipsJumpForwardTrigger = '<leader><Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'

"nerdcommenter
let g:NERDSpaceDelims=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""新文件标题""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"新建.c,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.c,*.sh,*.java exec ":call SetTitle()" 
""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#########################################################################") 
        call append(line("."), "\# File Name: ".expand("%")) 
        call append(line(".")+1, "\# Author: Juven") 
        call append(line(".")+2, "\# mail: yeashenlee@163.com") 
        call append(line(".")+3, "\# Created Time: ".strftime("%c")) 
        call append(line(".")+4, "\#########################################################################") 
        call append(line(".")+5, "\#!/bin/bash") 
        call append(line(".")+6, "") 
    else 
        call setline(1, "/******************************************************************************")
		call append(line("."), "")
		call append(line(".")+1, "	Copyright (C), 20015-2025, SHARPNOW Co., Ltd.")
		call append(line(".")+2, "")
		call append(line(".")+3, " ******************************************************************************")
        call append(line(".")+4, "  File Name     : ".expand("%"))
        call append(line(".")+5, "  Version       : Initial Draft") 
        call append(line(".")+6, "  Author        : Juven") 
        call append(line(".")+7, "  Created       : ".strftime("%Y/%m/%d")) 
		call append(line(".")+8, "  Last Modified : ")
		call append(line(".")+9, "  Description   : ")
		call append(line(".")+10, "  History       : ")
		call append(line(".")+11, "  1.Date        : ".strftime("%Y/%m/%d"))
		call append(line(".")+12, "   Author       : Juven")
		call append(line(".")+13, "   Modification : Created file")
		call append(line(".")+14, "")
        call append(line(".")+15, "******************************************************************************/") 
        call append(line(".")+16, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+17, "#include <iostream>")
        call append(line(".")+18, "using namespace std;")
        call append(line(".")+19, "")
    endif
    if &filetype == 'c'
        call append(line(".")+17, "#include <stdio.h>")
        call append(line(".")+18, "#include <unistd.h>")
        call append(line(".")+19, "")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc

func InsertHeadFileMaco()
	let gatename = substitute(toupper(expand("%:t")), "\\.", "_", "g")
	execute "normal! i#ifndef _" . gatename
	execute "normal! o#define _" . gatename
	execute "normal! o"
	execute "normal! o"
	execute "normal! o"
	execute "normal! Go#endif /* _" . gatename "*/"
	normal! kk
endfunc
autocmd BufNewFile *.{h,hpp,H} call InsertHeadFileMaco() 
