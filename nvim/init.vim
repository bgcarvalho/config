let g:mapleader = "\<Space>"

call plug#begin('~/config/.nvim/plugged')

" Make sure you use single quotes
Plug 'ayu-theme/ayu-vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

Plug 'Yggdroot/indentLine'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'bling/vim-bufferline'
"Plug 'kien/ctrlp.vim'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Initialize plugin system
call plug#end()


set termguicolors
set title                                                                       "change the terminal's title
set number                                                                      "Line numbers are good
"set relativenumber                                                              "Show numbers relative to current line
set noshowmode                                                                  "Hide showmode because of the powerline plugin
set gdefault                                                                    "Set global flag for search and replace
"set guicursor=a:blinkon500-blinkwait500-blinkoff500                             "Set cursor blinking rate
set cursorline                                                                  "Highlight current line
set smartcase                                                                   "Smart case search if there is uppercase
set ignorecase                                                                  "case insensitive search
set mouse=a                                                                     "Enable mouse usage
set showmatch                                                                   "Highlight matching bracket
set nostartofline                                                               "Jump to first non-blank character
set timeoutlen=1000 ttimeoutlen=0                                               "Reduce Command timeout for faster escape and O
set fileencoding=utf-8                                                          "Set utf-8 encoding on write
set wrap                                                                        "Enable word wrap
set linebreak                                                                   "Wrap lines at convenient points
set listchars=tab:>\ ,trail:·                                                   "Set trails for tabs and spaces
set list                                                                        "Enable listchars
set lazyredraw                                                                  "Do not redraw on registers and macros
"set hidden                                                                      "Hide buffers in background
set conceallevel=2 concealcursor=i                                              "neosnippets conceal marker
set splitright                                                                  "Set up new vertical splits positions
set splitbelow                                                                  "Set up new horizontal splits positions
set path+=**                                                                    "Allow recursive search
set inccommand=nosplit                                                          "Show substitute changes immidiately in separate split
set pumheight=15                                                                "Maximum number of entries in autocomplete popup
set exrc                                                                        "Allow using local vimrc
set secure                                                                      "Forbid autocmd in local vimrc
set grepprg=rg\ --vimgrep                                                       "Use ripgrep for grepping
set tagcase=smart                                                               "Use smarcase for tags
set updatetime=500                                                              "Cursor hold timeout
set synmaxcol=300                                                               "Use syntax highlighting only for 300 columns
set shortmess+=c                                                                "Disable completion menu messages in command line
set undofile                                                                    "Keep undo history across sessions, by storing in file
set completeopt-=preview                                                        "Disable preview window for autocompletion

" Give more space for displaying messages.
set cmdheight=2

filetype plugin indent on
syntax on

set background=dark
let g:airline_theme='one'
let ayucolor="dark"   " for dark version of theme
colorscheme ayu

"set guifont=Deja\ Vu\ Sans\ 12
set guifont=Fira\ Code\ 10

"silent! colorscheme gruvbox
"hi! link jsFuncCall GruvboxBlue
" Remove highlighting of Operator because it is reversed with cursorline enabled
"hi! Operator guifg=NONE guibg=NONE
"hi! link ALEVirtualTextError GruvboxRed
"hi! link ALEVirtualTextWarning GruvboxYellow
"hi! link ALEVirtualTextInfo GruvboxBlue

" ================ Turn Off Swap Files ============== {{{

set noswapfile
set nobackup
set nowritebackup

" ================ Indentation ====================== {{{
set autoindent
set breakindent
set smartindent
set nofoldenable
set colorcolumn=88
set foldmethod=syntax

nnoremap <silent> <C-w> :bd<CR>
nnoremap <silent> <leader><space> :Files<CR>
inoremap <C-P> <C-o>:Files<CR>
nnoremap <C-P> :Files<CR>
inoremap <C-s> <C-o>:w<CR>
map <C-s> :w<CR>
"silent! nmap <C-n> :NERDTreeToggle<CR>
vnoremap <ESC> <C-c>

" close file and keep window open
command Bd bp | sp | bn | bd
set guicursor=
