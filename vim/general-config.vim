"{{{ Folding
set foldenable "Enable folding

set foldlevelstart=9 "Shows most folds by default
set foldnestmax=5 "You're writing bad code if you need to up this one
set foldmethod=indent "Fold based on indentation.
"}}}

"{{{ Indentation
set tabstop=2 "columns per tab character
set softtabstop=2 "columns per tab key press in insert mode. Also on backspace
set shiftwidth=2 "columns per 'indent', used for <, >, and =
set expandtab "converts tabs to spaces
set shiftround "When indenting, round to a multiple of shiftwidth
"Let vim decide indentation rules by default.
"Used for files with no filetype specific settings, filetype specific config
"files may overwrite this.
set autoindent
"}}}

"{{{ Scrolling
set scrolloff=8 "Number of lines from vertical edge to start scroll
set sidescrolloff=15 "Number of lines from horizontal edge to start scroll
set sidescroll=6 "Number of columns to scroll at a time
"}}}

"{{{ Search
set incsearch "search as chars are entered
set hlsearch "highlight matches
set ignorecase "Case insensitive search
set smartcase  "except when explicitly using capital letters
"}}}

"{{{ Splits
set splitbelow "New splits below, not above
set splitright "New splits on the right, not left
"}}}

"{{{ Line numbers
set relativenumber "Linenumbers are relative to current line
set number "Display the actual line number for the current line
"}}}

"{{{ Command mode
set wildmenu "makes the command-line completion better
set confirm "instead of aborting because of unsaved changes, ask
set cmdheight=1 "set the command line height to 1
"}}}

"{{{ Vim autogenerated files

set nobackup "Disable backups
"Uncomment the below if odd files appear a lot
"set nowritebackup "Don't write pre-save backup files

set noswapfile "Disable swap files

"Enable persisted undo history
set undofile
set undodir=~/.vim-local/undofiles/

"Enable vim state to be persisted between sessions
"E.g. command history/search/registers etc.
"comma separated arguments list of:
" ! - Global variables in CONSTANT_CASE
" % - Buffer list
" ' - Maximum number of files to remember for marks. Must be included
" / - Max number of search patterns to remember. Applies to :%s as well
" : - Max number of commands to remember
" < - Ommitted => include all lines from registers
" @ - Max number of input-line items to remember (for prompts)
" c - Encoding for the viminfo file
" f - Whether or not to store file marks
" h - Whether to disable hlsearch when loading
" n - name (path) of the viminfo file
" r - concrete settings to ignore marks in files in removable media
" s - Max size of a register item in Kbyte.

set viminfo='50,<1000,s100,:100,/100,%5,n~/.vim-local/viminfo

"}}}

"{{{ Misc.
"Ensure that there's no delay between esc-ing and the next command executing
set timeoutlen=300 ttimeoutlen=0
set lazyredraw "only redraw when needed
set autoread "Automatically read file when edited outside of vim
set backspace=indent,eol,start "Make deleting natural
set nowrap "Don't wrap lines by default
filetype plugin indent on "Enable plugin- and filetype indent
syntax enable "Use syntax highlighting by default

set cursorcolumn "highlight current column

"How to represent non-printable characters
"In general, don't want tabs, so have them show up as special characters
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
if !exists("*OpenHelp80Cols")
  function OpenHelp80Cols()
      wincmd L
      exec 'vertical resize 81'
  endfunction
  autocmd FileType help :call OpenHelp80Cols()
endif

"Add fzf to the runtime path
set rtp+=/usr/local/opt/fzf

set highlight+=N:DiffText

set t_Co=256 "Tell vim we support 256 colours

set fillchars+=vert:│

augroup go_to_last_file_location
  autocmd!
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
augroup end
"}}}
