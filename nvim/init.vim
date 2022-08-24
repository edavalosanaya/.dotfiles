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
set colorcolumn=72

" Window Configuration
set splitbelow

" Code Folding
set foldmethod=indent
set foldnestmax=2

" Tabs and Spacing
set autoindent
set cindent
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab

" https://stackoverflow.com/a/30114038/13231446
" for html/rb files, 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab
autocmd Filetype css setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype js setlocal ts=2 sw=2 expandtab
autocmd Filetype ts setlocal ts=2 sw=2 expandtab

" for js/coffee/jade files, 4 spaces
autocmd Filetype python setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

" https://stackoverflow.com/a/4766304/13231446
" for command mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>

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

" Install QML highlighting
Plug 'peterhoeg/vim-qml'

" Installing vim-slime (requirement for ipython-jupyter)
Plug 'jpalardy/vim-slime', { 'for': 'python' }
Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }

" Installing Java Debugger
Plug 'mfussenegger/nvim-jdtls'

" Installing autoformat
Plug 'vim-autoformat/vim-autoformat'

" Installing bracey (live-preview server) for JavaScript
Plug 'turbio/bracey.vim'

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
" let test#python#runner = 'pyunit'
let test#python#runner = 'pytest'
 " Runners available are 'pytest', 'nose', 'nose2', 'djangotest', 'djangonose', 'mamba', and Python's built-in unittest as 'pyunit'
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
nnoremap <leader>rg       :Rg<CR>

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

" JAVA DEBUGGING
nmap <F1> :CocCommand java.debug.vimspector.start<CR>

"""""""""""""""""""""""""""""""""""""""
" Jupyter Notebook Configuration
"""""""""""""""""""""""""""""""""""""""

" vim-SLIME configurations
" always use tmux
" let g:slime_target = 'tmux'

" fix paste issues in ipython
let g:slime_python_ipython = 1

" always send text to the top-right pane in the current tmux tab without asking
" let g:slime_default_config = {
"             \ 'socket_name': get(split($TMUX, ','), 0),
"             \ 'target_pane': '{top-right}' }
let g:slime_paste_file = "$HOME/.slime_paste"
let g:slime_dont_ask_default = 1

"------------------------------------------------------------------------------
" ipython-cell configuration
"------------------------------------------------------------------------------
" Keyboard mappings. <Leader> is \ (backslash) by default

" map <Leader>s to start IPython
nnoremap <silent> m<C-s> :SlimeSend1 ipython --matplotlib<CR>

" map <Leader>r to run script
nnoremap <silent> m<C-r> :IPythonCellRun<CR>

" map <Leader>R to run script and time the execution
nnoremap <silent> m<C-R> :IPythonCellRunTime<CR>

" map <Leader>c to execute the current cell
nnoremap <silent> m<C-c> :IPythonCellExecuteCell<CR>

" map <Leader>C to execute the current cell and jump to the next cell
nnoremap <silent> m<C-C> :IPythonCellExecuteCellJump<CR>

" map <Leader>l to clear IPython screen
nnoremap <silent> m<C-l> :IPythonCellClear<CR>

" map <Leader>x to close all Matplotlib figure windows
nnoremap <silent> m<C-x> :IPythonCellClose<CR>

" map [c and ]c to jump to the previous and next cell header
nnoremap [c :IPythonCellPrevCell<CR>
nnoremap ]c :IPythonCellNextCell<CR>

" map <Leader>h to send the current line or current selection to IPython
nmap <silent> m<C-h> <Plug>SlimeLineSend
xmap <silent> m<C-h> <Plug>SlimeRegionSend

" map <Leader>p to run the previous command
nnoremap <silent> m<C-p> :IPythonCellPrevCommand<CR>

" map <Leader>Q to restart ipython
nnoremap <silent> m<C-Q> :IPythonCellRestart<CR>

" map <Leader>d to start debug mode
nnoremap <silent> m<C-d> :SlimeSend1 %debug<CR>

" map <Leader>q to exit debug mode or IPython
nnoremap <silent> m<C-q> :SlimeSend1 exit<CR>

" map <F9> and <F10> to insert a cell header tag above/below and enter insert mode
nmap <F9> :IPythonCellInsertAbove<CR>a
nmap <F10> :IPythonCellInsertBelow<CR>a

" also make <F9> and <F10> work in insert mode
imap <F9> <C-o>:IPythonCellInsertAbove<CR>
imap <F10> <C-o>:IPythonCellInsertBelow<CR>

"""""""""""""""""""""""""""""""""""""""
" TreeSitter Configuration
"""""""""""""""""""""""""""""""""""""""

lua << EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = { "python", "java", "javascript"},
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
" Syntax Highlighting Configuration
"""""""""""""""""""""""""""""""""""""""
let g:tigris#enabled = 1

"""""""""""""""""""""""""""""""""""""""
" Coc Configuration - LSP
"""""""""""""""""""""""""""""""""""""""

"Java Language : https://github.com/neoclide/coc-java
"Python Language : https://github.com/fannheyward/coc-pyright
"C Language : https://github.com/clangd/coc-clangd


"""""""""""""""""""""""""""""""""""""""
" Tab Movement/Management
"""""""""""""""""""""""""""""""""""""""

nnoremap J :tabprevious<CR>
nnoremap K :tabnext<CR>
nnoremap T :tabnew<CR>
nnoremap X :tabclose<CR>

"""""""""""""""""""""""""""""""""""""""
" Workspace Configuration / Project Management
"""""""""""""""""""""""""""""""""""""""

" let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" lua << EOF
"     require('telescope').load_extension('project')
" EOF

"""""""""""""""""""""""""""""""""""""""
" Docstring Generator Configuration
"""""""""""""""""""""""""""""""""""""""

let g:pydocstring_formatter = "google"
nmap <Leader>d <Plug>(pydocstring)

"""""""""""""""""""""""""""""""""""""""
" Autoformatting Configuration
"""""""""""""""""""""""""""""""""""""""

let g:python3_host_prog="$HOME/anaconda3/bin/python"
noremap <F3> :Autoformat<CR>
