" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
" コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2
" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title
" 検索時にファイルの最後まで行ったら最初に戻る (nowrapscan:戻らない)
set wrapscan
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" どのモードでもマウスを使えるようにする
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
set fileformats=dos,unix,mac
set fileencoding=utf-8
set fileencodings=ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,euc-jp,sjis,cp932,utf-8
"ステータスラインの設定
let ff_table = {'dos' : 'CR+LF', 'unix' : 'LF', 'mac' : 'CR'}
let &statusline='%<%f %h%m%r%w[%{(&fenc!=""?&fenc:&enc)}:%{ff_table[&ff]}]%y%= %-14.(%l,%c%V%) %P'

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
