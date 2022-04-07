" enable line numbers
set nu
" enable autoindent
set ai
" set default tab-size to 4
set tabstop=4
" enable status line
set ls=2
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
