set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" python code completion
Plugin 'davidhalter/jedi-vim'

" pep 8 checking
Plugin 'nvie/vim-flake8'

" autoformat (make sure to pip install black)
Plugin 'Chiel92/vim-autoformat'

" vim note-taking
Plugin 'vimwiki/vimwiki'

" vim instant markdown
Plugin 'instant-markdown/vim-instant-markdown', {'rtp': 'after'}

" coffescript
Plugin 'kchmck/vim-coffee-script'

" Git
Plugin 'tpope/vim-fugitive'

" nerdtree
Plugin 'preservim/nerdtree'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" VUNDLE END --------------------------------------------------

" JVIM BEGIN --------------------------------------------------
" add the proper PEP 8 indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix 


" don't run jedi-vim on pressing .
let g:jedi#popup_on_dot = 0

" Don't automatically call signatures (options)
let g:jedi#show_call_signatures = 0

" JVIM END ----------------------------------------------------

" VIMWIKI SETTINGS --------------------------------------------
"
set nocompatible
filetype plugin on
syntax on

let scratch = {}
let scratch.path = '$HOME/ownCloud/vimwiki_journals/scratch'
let scratch.index = 'Home'
let scratch.syntax = 'markdown'
let scratch.ext = '.md'

let placeholder = {}
let placeholder.path = '$HOME/ownCloud/vimwiki_journals/placeholder'
let placeholder.syntax = 'markdown'
let placeholder.ext = '.md'

let g:vimwiki_list = [scratch, placeholder]

" VIMWIKI END ------------------------------------------------

" VIM INSTANT MARKDOWN ---------------------------------------
filetype plugin on
"Uncomment to override defaults:
"let g:instant_markdown_slow = 1
let g:instant_markdown_autostart = 0
"let g:instant_markdown_open_to_the_world = 1
"let g:instant_markdown_allow_unsafe_content = 1
"let g:instant_markdown_allow_external_content = 0
"let g:instant_markdown_mathjax = 1
"let g:instant_markdown_mermaid = 1
"let g:instant_markdown_logfile = '/tmp/instant_markdown.log'
"let g:instant_markdown_autoscroll = 0
"let g:instant_markdown_port = 8888
let g:instant_markdown_python = 1

" VIM INSTANT MARKDOWN END -----------------------------------

" VIM mouse scroll (including tmux)
set mouse=n

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

" Set cursor by mode

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar



