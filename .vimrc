" =========================== Vim Config Start =========================== "

" 去除VI一致性,必须要添加 "
set nocompatible  
" 必须要添加 "
filetype off                  
" 中文配置 "
set fileencodings=utf-8,chinese,latin-1
set termencoding=utf-8
set encoding=utf-8
" 语法高亮 "
syntax on
" 行数 开 "
set nu!
" 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"
set autoindent 
" 使用 C/C++ 语言的自动缩进方式 "
set cindent 
" colorscheme用于选择配色方案 
colorscheme desert

" =========================== Vim Config End =========================== "

" =========================== Plugin Config Start =========================== "

" ============ WinManager Config Start ============ "

" 设置要管理的组件，并对NERDTree组件进行设置，如果不设置，则不能使用winManager启动NERDTree "
let g:NERDTree_title='NERD Tree'
let g:winManagerWindowLayout='NERDTree|TagList'
function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

" 绑定F2到winmanager，并在启动时关闭额外自动打开的缓冲区 "
nmap <silent> <F2> :if IsWinManagerVisible() <BAR> WMToggle<CR> <BAR> else <BAR> WMToggle<CR>:q<CR> endif <CR>

" ============ WinManager Config End ============ "

" 修复第一个窗口不能打开 airline
set laststatus=2
set timeoutlen=50
" 设置主题
let g:airline_theme='luna'
" 优化字体显示，不过需要安装字体
" [推荐] https://github.com/ryanoasis/nerd-fonts
let g:airline_powerline_fonts = 1

" =========================== Plugin Config End =========================== "

" =========================== Plugin Install Start =========================== "

" 设置包括vundle和初始化相关的runtime path
" 下载 vundle 并保存到指定位置
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" :PluginInstall 安装列表内的插件
" :PluginClean 删除不在列表内的插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 让vundle管理插件版本 "
Plugin 'VundleVim/Vundle.vim'
" 自动补全 "
Plugin 'SuperTab'
" NERDTree是一个用于浏览文件系统的树形资源管理外挂,它可以让你像使用Windows档案总管一样在VIM中浏览文件系统并且打开文件或目录。 "
Plugin 'https://github.com/scrooloose/nerdtree.git'
" 窗口管理 "
Plugin 'WinManager'
" 这是一款状态栏增强插件，可以让你的Vim状态栏非常的美观，同时包括了buffer显示条扩展smart tab line以及集成了一些插件。 "
Plugin 'Vim-airline'
" vim-airline 的主题
Plugin 'vim-airline/vim-airline-themes'
" 你的所有插件需要在下面这行之前 "
call vundle#end()          
" 加载vim自带和插件相应的语法和文件类型相关脚本 "  
filetype plugin indent on    

" =========================== Plugin Install End =========================== "

