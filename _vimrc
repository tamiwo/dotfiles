"===================================================================== 
    " 環境変数
"===================================================================== 
let $DESKTOP = "C:/Users/Nishimura/Desktop"
let $SVN = "C:/workspase"
let $SYGWIN = "C:/cygwin64/home/Nishimura"
let $VIMRC = "C:/vim74-kaoriya-win64/_vimrc"
let $MYGVIMRC = "C:/vim74-kaoriya-win64/gvimrc"

" vi互換の動作を無効にするコマンド。既に設定されているらしいが一応
set nocompatible 
" 行番号の表示
set number
" タブを表示するときの幅
set tabstop=4
set shiftwidth=4
" markdownはタブ幅2文字にする
autocmd BufRead,BufNewFile *.md set tabstop=2
autocmd BufRead,BufNewFile *.md set shiftwidth=2
" htmlもタブ幅2文字にする
au BufRead,BufNewFile *.html set tabstop=2
au BufRead,BufNewFile *.html set shiftwidth=2
" タブをスペースとして扱う
set expandtab
" 改行時に前の行のインデントを継続する
set autoindent
" バックアップファイル(末尾に~がついたファイル)を保存するディレクトリ
set backupdir=C:/vim74-kaoriya-win64/backup
" コマンド履歴を保存したファイルの保存先
set undodir=C:/vim74-kaoriya-win64/undo
set grepprg=C:/cygwin64/bin/grep\ -nH
"折り返しなし
set nowrap
"自動改行なし
set tw=0
" 矩形選択で行末を超えてブロックを選択できるようにする                                                                                                              
set virtualedit+=block
" 無名レジスタに入るデータを、*レジスタにも入れる。
set clipboard+=unnamed
" カーソルのある行を強調表示する
set cursorline

"閉じ括弧を自動入力する
inoremap ( ()<Left>
inoremap [ []<Left>
"中括弧は関数っぽく
inoremap {<Enter> {}<Left><CR><ESC><S-o>

" 保存せずに閉じるコマンドのなので間違って実行しても何も起きないようにしておく
nnoremap ZQ <Nop>

"現在日時の挿入
nnoremap t <Nop>
nnoremap ts <ESC>i<C-r>=strftime("%Y/%m/%d(%a) %H:%M:%S")<CR><ESC>
nnoremap td <ESC>i<C-r>=strftime("%Y/%m/%d(%a)")<CR><ESC>
nnoremap tD <ESC>i<C-r>=strftime("%m/%d")<CR><ESC>
nnoremap tt <ESC>i<C-r>=strftime("%H:%M:%S")<CR><ESC>
nnoremap th <ESC>i<C-r>=strftime("%H")<CR><ESC>
nnoremap tm <ESC>i<C-r>=strftime("%H:%M")<CR><ESC>
nnoremap tM <ESC>i<C-r>=strftime("%m/%d %H:%M")<CR><ESC>
nnoremap ti <ESC>i<C-r>=strftime("%m/%d %H:%M")<CR>
nnoremap tI <ESC>I<C-r>=strftime("%m/%d %H:%M")<CR>
nnoremap to <ESC>o<ESC>i<C-r>=strftime("%H:%M")<CR><CR><TAB>
nnoremap tO <ESC>O<ESC>i<C-r>=strftime("%H:%M")<CR>
nnoremap t; <ESC>i<C-r>=strftime("%Y/%m/%d")<CR><CR><ESC>070i-<ESC>
nnoremap T <Nop>
nnoremap Ts <ESC>a<C-r>=strftime("%Y/%m/%d %H:%M:%S")<CR><ESC>
nnoremap Td <ESC>a<C-r>=strftime("%Y/%m/%d")<CR><ESC>
nnoremap TD <ESC>a<C-r>=strftime("%m/%d")<CR><ESC>
nnoremap Tt <ESC>a<C-r>=strftime("%H:%M:%S")<CR><ESC>
nnoremap Th <ESC>a<C-r>=strftime("%H")<CR><ESC>
nnoremap Tm <ESC>a<C-r>=strftime("%H:%M")<CR><ESC>
nnoremap TM <ESC>i<C-r>=strftime("%m/%d %H:%M")<CR><ESC>
nnoremap Ti <ESC>i<C-r>=strftime("%H:%M")<CR>
nnoremap TI <ESC>I<C-r>=strftime("%H:%M")<CR>
nnoremap To <ESC>o<C-r>=strftime("%H:%M")<CR>
"ラインを引く
nnoremap tl <ESC>o<ESC>70i-<ESC>0
nnoremap tL <ESC>O<ESC>70i-<ESC>0
nnoremap Tl <ESC>o<ESC>70i=<ESC>0
nnoremap TL <ESC>O<ESC>70i=<ESC>0 
"日付とライン
nnoremap tn <ESC>o<ESC>i<C-r>=strftime("%Y/%m/%d(%a)")<CR><CR><ESC>70i-<ESC>0j


"タブとウィンドウの操作をsキーに割り当てる
"http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
nnoremap s <Nop>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap sn gt
nnoremap <C-Tab> gt
nnoremap sp gT
nnoremap <C-S-Tab> gT
nnoremap sr <C-w>r
nnoremap s= <C-w>=
nnoremap s; <C-w>+
nnoremap s- <C-w>-
nnoremap sw <C-w>w
nnoremap s\ <C-w>_
nnoremap s/ 1000<C-w>-
nnoremap so <C-w>_<C-w>|
nnoremap sO <C-w>=
nnoremap s, <C-w>>
nnoremap s. <C-w><
nnoremap sN :tabm +1<CR>
nnoremap sP :tabm -1<CR>
nnoremap s0 :tabm 0<CR>
nnoremap s$ :tabm<CR>
nnoremap st :<C-u>tabnew<CR>
nnoremap sT <C-w>T
nnoremap se :<C-u>tabnew<CR>:E<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" 検索結果を画面中央に持ってくる
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" 左右のカーソル移動で行間移動可能にする。
" http://fisto.hatenablog.com/entry/2012/11/16/181349
set whichwrap=b,s,<,>,[,]

" 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-J> <C-Down>
inoremap <C-K> <C-Up>
inoremap <C-H> <C-Left>
inoremap <C-L> <C-Right>
"タイムスタンプを挿入してinsertモードへ移行
inoremap <C-s> <ESC>a<C-R>=strftime("[%Y/%m/%d %H:%M] ")<CR>
inoremap <C-d> <ESC>a<C-R>=strftime("[%Y/%m/%d] ")<CR>

"grep"
nnoremap <C-g> :tabnew |grep -nrI --exclude=*.pbw* --exclude=*.svn* --exclude=*.met* "<C-r><C-w>" . |cw<CR>

"Gtagsキーバインド
"カーソルの単語の関数へジャンプ
nnoremap <C-]> :Gtags <C-r><C-w><CR>
nnoremap <C-t> :Gtags -f %<CR>

" その他便利そうなキーバインド
" Esc2回で検索のハイライトを消す
nnoremap <Esc><Esc> :noh<CR>
" grepの検索結果の移動
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
"タイムスタンプ挿入
nnoremap dt <ESC>i<C-R>=strftime("%H:%M")<CR><CR>
"Yで行末までコピー
nnoremap Y y$
"vimrcをスペースドットで開く
nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>

nnoremap <space>, :<c-u>tabedit $MYGVIMRC<CR>

"F5でCをコンパイル→実行
command! Gcc call s:Gcc()
nmap <F5> :Gcc<CR>

function! s:Gcc()
  if expand("%:e") == 'c'
    :w
        :!gcc % -o %.out
        :!%.out
  else
    echo 'gcc command support .c file only.'
  endif
endfunction
"expand("%:e")
"

" 折り畳みの状態を保存する
" 上手く動かなかった
"autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
"autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" バッファのオプションは保存しない
"set viewoptions-=options


" netrw.vimのカスタマイズ
" netrwは常にtree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
" 指定のファイルを表示しない
let g:netrw_list_hide = '\.bin,\.obj,\.abs,\.frm,\.frp,\.mot,\.sal,\.sni,\.sub,\.suf,\.sus,\.swp,\.lib,\.d,\.d2'
" ソート順指定:以下のURLの質問と同じことがしたいがよくわからない
" https://stackoverflow.com/questions/32873013/how-to-make-netrw-list-h-and-c-files-together-as-pairs
" let g:netrew_sort_sequence = '[\/]$,\.h$,\.c$,\.cpp$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$' "origin

"vimgrepの検索対象から特定の拡張子をのファイルを除外する
"vimgrep専用の設定ではないようなので他のコマンドにも影響があるらしい
:set wildignore=*.abs,*.lib,*.bin,*frm,*.obj,*.exe

"全角のハイライト
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=#cccccc
  autocmd VimEnter,WinEnter * match IdeographicSpace /　/
augroup END

" md as markdown, instead of modula2
augroup MyAutoGroup_test
  autocmd!
  autocmd! BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
" シンタックスハイライトを追加
au BufRead,BufNewFile *.swift set filetype=swift
au BufRead,BufNewFile *.toml set filetype=toml
au BufRead,BufNewFile *.ttl set filetype=ttl

" ファイルエンコーディング優先順位
set fileencodings=sjis,utf-8
" .emlはutf-8でエンコードする
au BufRead,BufNewFile *.eml set fileencoding=utf-8

" case文でインデントしない
set cinoptions+=:0

" quickfixのエラーフォーマット
set errorformat+=%f(%l):%m
" %f(%l) : %t%*\D%n: %m,%*[^"]"%f"%*\D%l: %m,%f(%l) : %m,%*[^ ] %f %l: %m,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,%f|%l| %m

"メニューバーを非表示にする
"set guioptions-=m
"ツールバーを非表示にする
set guioptions-=T
"左右のスクロールバーを非表示にする
"set guioptions-=r
"set guioptions-=R
"set guioptions-=l
"set guioptions-=L
"水平スクロールバーを非表示にする
"set guioptions-=b


" ビープ音を鳴らさない
set t_vb=

" plantUMLのchrome viewer起動
au FileType plantuml command! OpenUml :!start chrome %


