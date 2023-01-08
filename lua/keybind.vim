" 按键设置 
" Save & quit
let mapleader = " "      " 定义<leader>键
map Q :q<CR>
map <C-s> :wq!<CR>
map s <nop>
map S :w<CR>
map <c-q> :q!<CR>
" make Y to copy till the end of the line
nnoremap Y y$
" Copy to system clipboard
vnoremap Y "+y
" Indentation
nnoremap < <<
nnoremap > >>

noremap ; :

" Faster in-line navigation
noremap W 5w
noremap B 5b

noremap <a-j> 5j
noremap <a-k> 5k

" noremap - N
" noremap = n

" 搜索设置
exec "nohlsearch"
noremap <LEADER><CR> :nohlsearch<CR>

" 分屏
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
map <LEADER>h <c-w>h
map <LEADER>l <c-w>l
map <LEADER>j <c-w>j
map <LEADER>k <c-w>k
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sh <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srh <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" 目录树
map <C-b> :NvimTreeToggle<CR>

" tab标签
map tn :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>

map <LEADER><leader>s :e ~/.config/nvim/ <CR>
nmap R :RnvimrToggle<CR>
map rr :source $MYVIMRC<CR>
map <LEADER>i <c-]>
map <LEADER>o <c-o>



