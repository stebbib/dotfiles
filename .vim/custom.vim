" Custom AJ settings
"
" Split Between Windows

:let mapleader = ","
:let maplocalleader = " "

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
 
imap jk <Esc>
imap jj <Esc>
noremap ss :w<CR>
noremap qq :q<CR>
map <LocalLeader>h :cprev<CR>
map <LocalLeader>l :cnext<CR>
nnoremap <Down> :m+<CR>==
nnoremap <Up> :m-2<CR>==
map <LocalLeader>e :Explore<CR>
map <Leader>v :vsplit<CR>
map <Leader>h :split<CR>

" Tabs shortcuts
nnoremap <LocalLeader>n :tab split<CR>
nnoremap <LocalLeader>, :tabprevious<CR>
nnoremap <LocalLeader>. :tabNext<CR>

set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

:set hlsearch

" Don't show docstring when autocompleting
autocmd FileType python setlocal completeopt-=preview
let g:jedi#use_splits_not_buffers = "right"
let g:netrw_list_hide= '.*\.swp$,.*\.pyc'

" YCM
let g:ycm_autoclose_preview_window_after_completion=1
map <LocalLeader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on


set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

if has("gui_running")
   let s:uname = system("uname")
   if s:uname == "Darwin\n"
      set guifont=Meslo\ LG\ S\ for\ Powerline
   endif
endif

" CTRLP
let g:ctrlp_map = '<Leader>o'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" Fugitive

nmap <leader>gp :silent Ggrep<space>
nmap <leader>gg :let @/="\\<<C-R><C-W>\\>"<CR>:set hls<CR>:silent Ggrep -w "<C-R><C-W>"<CR>:ccl<CR>:cw<CR><CR>
nmap <leader>gs :silent Gstatus<CR>
nmap <leader>gb Gblame<CR>

" flake8
let g:flake8_show_quickfix=0
let g:flake8_show_in_gutter=1

" buffergator
let g:buffergator_viewport_split_policy="B"


" Search
set ignorecase
set smartcase

" Copy to clipboard
map <Leader>y :%y+<CR>

" Color changes for seashell
hi Visual term=reverse cterm=reverse gui=reverse guibg=None ctermbg=None
hi Search cterm=reverse gui=reverse guibg=None ctermbg=None

"line numbers
set number
set laststatus=2

"Tagbar
nmap <LocalLeader>t :TagbarToggle<CR>
