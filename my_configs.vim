" *****************************
" 基本设置
" *****************************
" 显示行号
set number
" 设置默认进行大小写不敏感查找
set ignorecase
" 如果有一个大写字母，则切换到大小写敏感查找
set smartcase
" tab用空格代替
set ts=4
set expandtab
filetype on





" *****************************
" NERDTree插件设置
" *****************************
" 设置默认在左边
let NERDTreeWinPos = "left"
" 如果NERDTree是最后一个窗口，则自动关闭该窗口
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())| q | endif



" *****************************
" YCM插件相关配置
" *****************************
" 全局配置文件路径
let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/.ycm_extra_conf.py'
" 不显示开启vim时检查ycm_extra_conf文件的信息
let g:ycm_confirm_extra_conf=0
" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" 输入第2个字符开始补全
let g:ycm_min_num_of_chars_for_completion=2
" 关闭语法错误检测提示
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0

let g:ycm_auto_trigger = 1
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'

map <leader>j :YcmCompleter GoToDefinition<CR>
nnoremap <leader>jj :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jk :YcmCompleter GoToDefinitionElseDeclaration<CR>





" *****************************
" auto-format插件配置
" 需要先安装astyle或者clang-format
" *****************************
" 打开Debug信息
" let g:autoformat_verbosemode=1
" clang-format预定义5种代码格式化风格
" let g:formatdef_attach = '"clang-format -style=llvm"'
let g:formatdef_attach = '"clang-format -style=webkit"'
" let g:formatdef_attach = '"clang-format -style=google"'
" let g:formatdef_attach = '"clang-format -style=chromium"'
" let g:formatdef_attach = '"clang-format -style=mozilla"'

let g:formatters_cpp = ['attach']
let g:formatters_c = ['attach']
" let g:autoformat_autoindent = 0
" let g:autoformat_retab = 0
" let g:autoformat_remove_trailing_spaces = 0

" 一键格式化代码
nnoremap <F3> :Autoformat<CR>
