let mapleader = ','
let maplocalleader = ' '

"{{{Normal mode mappings

"{{{ File Navigation
"
"Flip between files with ,.
noremap <leader>. :b#<CR>

"Follow and return from ctagged files
nnoremap ] g<C-]>
nnoremap [ <C-t>

"Fuzzy-find any file in this git repo with ?
nnoremap ? :GFiles<CR>
"}}}

"{{{ Editor navigation

"Enable camelcase navigation for words
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
sunmap w
sunmap b
sunmap e

"Make H be home, L be end
noremap H ^
noremap L $
nnoremap j gj
nnoremap k gk

"Navigate vim splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Evil keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> :bp<CR>
noremap <Right> :bn<CR>

"Literally the best keybindings I know
nmap <BS> {
nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'

"Space bar toggles easy-motion search
map 888 <Plug>(easymotion-prefix)
nmap f 888s

map # <Plug>(asterisk-z*)
map * <Plug>(asterisk-z#)

"}}}

"Make a vertical split with vv, and go to tag if on one
nnoremap <silent> vv :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
"Make a horizontal split with VV, and go to tag if on one
nnoremap <silent> VV :sp <CR>:exec("tag ".expand("<cword>"))<CR>

"Insert blank lines without insert mode
nmap t o<ESC>k
nmap T O<ESC>j
"Make Q repeat the last recorded marcro
nmap Q @@

"Simplify getting to :Ex mode
nnoremap ; :

"Clear the search highlights
nnoremap <leader><space> :nohlsearch<CR>

"Leader + v opens vimrc
nnoremap <leader>v :e ~/.vimrc<CR>
"Leader + Leader opens nerd tree.
nnoremap <silent> <leader><leader> :NERDTreeToggle<CR>

nnoremap <leader>e :edit <C-R>=expand('%:p:h') . '/'<CR>

"}}}

"{{{Visual mode mappings

"Align blocks of text and keep them selected
vmap < <gv
vmap > >gv

vnoremap jk <esc>

"Make // seach for the currently selected words
vnoremap // y/<C-R>"<CR>

vmap <BS> {
vmap <CR> }
"}}}

"{{{ Insert-mode mappings

"Good for when CAPS-LOCK can't be mapped to escape.
inoremap jk <esc>

"}}}

"{{{ Command mode mappings

"Map any !shell commands to clear the console first
:map :! :!clear;

"}}}

"{{{ List of keys that are available for mapping to:
"U - don't usually want to do a photoshop-undo
"Up and down arrow keys
"Shift-tab (Cannot use just tab in normal mode for terminal reasons)
"}}}
