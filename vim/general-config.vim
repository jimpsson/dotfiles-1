"=== Folding ===
set foldenable "Enable folding
set foldlevelstart=10 "Shows most folds by default
set foldnestmax=10 "You're writing bad code if you need to up this one
set foldmethod=indent

"=== Indentation ===
set tabstop=2 "number of VISUAL SPACES per tab
set softtabstop=2 "Number of spaces per tab when editing
set shiftwidth=2
set expandtab "converts tabs to spaces
set autoindent "Used for files with no filetype specific settings

"=== Scrolling ===
set scrolloff=8 "Number of lines from vertical edge to start scroll
set sidescrolloff=15 "Number of lines from horizontal edge to start scroll
set sidescroll=1 "Number of columns to scroll at a time

"=== Search ===
set incsearch "search as chars are entered
set hlsearch "highlight matches
set ignorecase "Case insensitive search
set smartcase  "except when explicitly using capital letters

"=== Splits ===
set splitbelow "New splits below, not above
set splitright "New splits on the right, not left

"=== Line numbers ===
set relativenumber "Linenumbers are relative to current line
set number "Display line numbers

"=== Command mode ===
set wildmenu "makes the command-line completion better
set confirm "instead of aborting because of unsaved changes, ask
set cmdheight=1 "set the command line height to 1

"=== Vim autogenerated files ===
set nobackup "No backup files
set nowb "No write backup files
set noswapfile "No swap files

"=== Misc. ===
"Ensure that there's no delay between esc-ing and the next command executing
set timeoutlen=300 ttimeoutlen=0
set lazyredraw "only redraw when needed
set autoread "Automatically read file when edited outside of vim
set backspace=indent,eol,start "Make deleting natural
set nowrap "Don't wrap lines by default
filetype plugin indent on "Enable plugin- and filetype indent
syntax enable "Use syntax highlighting by default

"How to represent non-printable characters
set listchars=tab:>-,trail:·,extends:>,precedes:<
set list "turn the above on

"Allows you to hide a buffer without saving it
set hidden

"Make J smarter with comments
if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j
endif

set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set laststatus=2 " Always display the statusline in all windows

" Make help always open veritcally
function OpenHelp80Cols()
    wincmd L
    exec 'vertical resize 81'
endfunction
autocmd FileType help :call OpenHelp80Cols()

set rtp+=/usr/local/opt/fzf

set highlight+=N:DiffText

set t_Co=256 "Tell vim we support 256 colours

set fillchars+=vert:│
