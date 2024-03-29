" VIM minimal setup
" https://www.guckes.net/vim/setup.html
"" removed digraph - irritating behavior
set ai nocp  ek hid   ru sc vb wmnu   noeb noet nosol
set bs=2 fo=cqrt ls=2 shm=at tw=72 ww=<,>,h,l 
set comments=b:#,:%,n:>
set list listchars=tab:»·,trail:·
set viminfo=%,'50,\"100,:100,n~/.viminfo

" https://www.reddit.com/r/programming/comments/t0za1m/comment/hydbaur/?utm_source=share&utm_medium=web2x&context=3
set splitbelow
set splitright
set nowrap
set colorcolumn=80

" enable line numbers
set nu
" set default tab-size to 4
set tabstop=4
" https://stackoverflow.com/questions/2287440/how-to-do-case-insensitive-search-in-vim
set ignorecase
set smartcase
" syntax highlighting
syntax on

" color theme, monokai inspired
if has('termguicolors')
	set termguicolors
endif
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai
