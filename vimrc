syntax on
setlocal t_Co=256
setlocal filetype=on
setlocal background=dark
colorscheme desert256 
setlocal number
setlocal lcs=tab:>.,trail:_
setlocal tabstop=4
setlocal shiftwidth=4
setlocal tags=./tags;
setlocal hlsearch
"let g:SrcExpl_UpdateTags = 1
set encoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi<C-R>z'<ESC>

