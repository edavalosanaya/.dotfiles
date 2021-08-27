"""""""""""""""""""""""""""""""""""""""
" General Configuration
"""""""""""""""""""""""""""""""""""""""
syntax on
set ma
set nu
filetype plugin indent on
set backspace=indent,eol,start
set nocp
set ruler
set wildmenu
set mouse-=a
set t_Co=256
set clipboard^=unnamedplus
set relativenumber
set nocompatible " required by ctrl-space
set hidden
set encoding=utf-8

" Window Configuration
set splitbelow

" Code Folding
"set foldmethod=manual
set foldnestmax=2

" Tabs and Spacing
set autoindent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
set diffopt +=iwhite

" Vertical Line
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%79v', 100)

"""""""""""""""""""""""""""""""""""""""
" Plug Configuration
"""""""""""""""""""""""""""""""""""""""

" Code additions to use vim-plug
call plug#begin('~/.vim/plugged')

" Installing TreeSitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" Installing start-page plugin
Plug 'mhinz/vim-startify'

" Installing pydocstring
Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }

" Installing telescope
"Plug 'nvim-telescope/telescope.nvim'

" Installing project.vim pluging
"Plug 'ahmedkhalf/project.nvim'

" Installing ctrl-space
"Plug 'vim-ctrlspace/vim-ctrlspace'

" Installing colortheme Gruvbox
"Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'

" Install NERDTree
Plug 'preservim/NERDTree'

" Install NERDTree Additions
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"Plug 'scrooloose/nerdtree-project-plugin'
Plug 'PhilRunninger/nerdtree-buffer-ops'

" Navigation
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'kyazdani42/nvim-web-devicons' " for file icons

" Installing a good terminal
" Plug 'nikvdp/neomux'

" Commenting things out
Plug 'tpope/vim-commentary'

" Installing fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'

" Install PlantUML and its dependencies
Plug 'tyru/open-browser.vim'
Plug 'aklt/plantuml-syntax'
Plug 'weirongxu/plantuml-previewer.vim'

" Installing Markdown Previewer
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Installing Unittesting Tools
Plug 'vim-test/vim-test'

" Installing Conda management tools
Plug 'cjrh/vim-conda'

" Installing JSON editor tools
Plug 'elzr/vim-json'

" Installing debugger tools
Plug 'puremourning/vimspector'

" Installing Coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" CocInstall java-coc
" CocInstall coc-pyright
" Fixing error: https://github.com/neoclide/coc-java/issues/99

" Installing which-key-vim that provides help finding commands
Plug 'liuchengxu/vim-which-key'

" Installing airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Installing sourcetail
"Plug 'CoatiSoftware/vim-sourcetrail'

" Initialize plugin system
call plug#end()

"""""""""""""""""""""""""""""""""""""""
" Keybindings
"""""""""""""""""""""""""""""""""""""""
" Making my space into my leader key
"map <Space> <Leader>
"nnoremap <silent> <Leader> :WhichKey '<Space>'<CR>

" e keymap for environment
map <silent> <F4> :CondaChangeEnv<CR>

" t keymap for testing 
nmap <silent> t<C-n> :TestNearest<CR>
nmap <silent> t<C-f> :TestFile<CR>
nmap <silent> t<C-s> :TestSuite<CR>
nmap <silent> t<C-l> :TestLast<CR>
nmap <silent> t<C-g> :TestVisit<CR>

" Folding
nmap <leader><C-n> :NERDTreeToggle<CR>

" Fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>ag       :Ag! <C-R><C-W><CR>
nnoremap <leader>m        :History<CR>

"""""""""""""""""""""""""""""""""""""""
" Debugger Keybindings
"""""""""""""""""""""""""""""""""""""""

" packadd! vimspector
"let g:vimspector_enable_mappings = 'HUMAN'
nmap <Leader>g <Plug>VimspectorContinue 
nmap <Leader>q <Plug>VimspectorStop 
nmap <Leader>r <Plug>VimspectorRestart
nmap <Leader>p <Plug>VimspectorPause
nmap <Leader>b <Plug>VimspectorToggleBreakpoint
nmap <Leader>s <Plug>VimspectorStepOver
nmap <Leader>i <Plug>VimspectorStepInto
nmap <Leader>o <Plug>VimspectorStepOut
nmap <Leader><C-b> <Plug>VimspectorToggleConditionalBreakpoint
nmap <Leader><A-b> <Plug>VimspectorAddFunctionBreakpoint
nmap <Leader>E :VimspectorEval 
"nmap <Leader>G <C-w>j:set ma<CR>

"""""""""""""""""""""""""""""""""""""""
" TreeSitter Configuration
"""""""""""""""""""""""""""""""""""""""

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "java" },
    highlight = {
        enable = true,
    }
}
EOF

"""""""""""""""""""""""""""""""""""""""
" Color Configuration
"""""""""""""""""""""""""""""""""""""""

autocmd vimenter * ++nested colorscheme molokai
:let g:airline_theme='molokai'
set termguicolors

"""""""""""""""""""""""""""""""""""""""
" Coc Configuration - LSP
"""""""""""""""""""""""""""""""""""""""

"Java Language : https://github.com/neoclide/coc-java
"Python Language : https://github.com/fannheyward/coc-pyright
"C Language : https://github.com/clangd/coc-clangd

"""""""""""""""""""""""""""""""""""""""
" Workspace Configuration / Project Management
"""""""""""""""""""""""""""""""""""""""

" let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" lua << EOF
"     require('telescope').load_extension('project')
" EOF
