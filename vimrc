" $BD9$$9T$r@^$jJV$7$FI=<((B (nowrap:$B@^$jJV$5$J$$(B)
set wrap
" $B>o$K%9%F!<%?%99T$rI=<((B ($B>\:Y$O(B:he laststatus)
set laststatus=2
" $B%3%^%s%I%i%$%s$N9b$5(B (Windows$BMQ(Bgvim$B;HMQ;~$O(Bgvimrc$B$rJT=8$9$k$3$H(B)
set cmdheight=2
" $B%3%^%s%I$r%9%F!<%?%99T$KI=<((B
set showcmd
" $B%?%$%H%k$rI=<((B
set title
" $B8!:w;~$K%U%!%$%k$N:G8e$^$G9T$C$?$i:G=i$KLa$k(B (nowrapscan:$BLa$i$J$$(B)
set wrapscan
" $B3g8LF~NO;~$KBP1~$9$k3g8L$rI=<((B (noshowmatch:$BI=<($7$J$$(B)
set showmatch
" $B%3%^%s%I%i%$%sJd40$9$k$H$-$K6/2=$5$l$?$b$N$r;H$&(B($B;2>H(B :help wildmenu)
set wildmenu
" $B$I$N%b!<%I$G$b%^%&%9$r;H$($k$h$&$K$9$k(B
set mouse=a

syntax on
filetype on
filetype plugin on
filetype indent on
setlocal t_Co=256
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
set fileformat=unix
set fileencoding=utf-8
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

