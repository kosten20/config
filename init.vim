call plug#begin('~/.local/share/nvim//plugged')

Plug 'junegunn/vim-easy-align'

Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'fatih/vim-go', { 'tag': '*' }

Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug '~/my-prototype-plugin'

Plug 'mattn/emmet-vim'

Plug 'ErichDonGubler/vim-sublime-monokai'

Plug 'vim-airline/vim-airline'

Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
  
Plug 'pangloss/vim-javascript'
"Plug 'Quramy/tsuquyomi' 
"Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
  
"NerdTree
  
Plug 'preservim/nerdtree'

call plug#end()

colorscheme sublimemonokai

"это вроде строка сост

let g:airline_powerline_fonts = 1 "Включить поддержку Powerline шрифтов
let g:airline#extensions#keymap#enabled = 0 "Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%l/%L Col:%c" "Кастомная графа положения курсора
let g:Powerline_symbols='unicode' "Поддержка unicode
let g:airline#extensions#xkblayout#enabled = 0

"Emmet
let g:user_emmet_leader_key='<Leader>'

" deoplete.nvim
let g:deoplete#enable_at_startup = 1

"мои настройки
syntax on
set number 
set mouse=a  " enable mouse
set noswapfile " указание на то, чтобы не генерить swapfile
set scrolloff=7

set tabstop=4 " 1 tab = 4 space
set autoindent " копмирование текущих отступов при переходе на новую строку
set fileformat=unix
filetype indent on      " load filetype-specific indent files

set encoding=utf-8 
set nocompatible 

let mapleader=","
:set relativenumber
:nnoremap <leader>\ :noh<return><esc>
:au FocusLost * :wa

"NerdTree

:nnoremap <leader>n :NERDTreeFocus<CR>
:nnoremap <leader>cn :NERDTreeClose<CR>

"terminal

:nnoremap ` <C-W>s<C-W>j:term bash<CR>
:tnoremap <Esc> <C-\><C-N>
