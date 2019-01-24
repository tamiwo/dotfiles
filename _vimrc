"===================================================================== 
" ���ϐ�
"===================================================================== 
let $DESKTOP = "C:/Users/Nishimura/Desktop"
let $SVN = "C:/workspase"
let $SYGWIN = "C:/cygwin64/home/Nishimura"
let $VIMRC = "C:/vim74-kaoriya-win64/_vimrc"
let $MYGVIMRC = "C:/vim74-kaoriya-win64/gvimrc"

" vi�݊��̓���𖳌��ɂ���R�}���h�B���ɐݒ肳��Ă���炵�����ꉞ
set nocompatible 
" �s�ԍ��̕\��
set number
" �^�u��\������Ƃ��̕�
set tabstop=4
" �^�u��}������Ƃ��̕�
set shiftwidth=4
" �^�u���X�y�[�X�Ƃ��Ĉ���
set expandtab
" ���s���ɑO�̍s�̃C���f���g���p������
set autoindent
" �o�b�N�A�b�v�t�@�C��(������~�������t�@�C��)��ۑ�����f�B���N�g��
set backupdir=C:/vim74-kaoriya-win64/backup
" �R�}���h������ۑ������t�@�C���̕ۑ���
set undodir=C:/vim74-kaoriya-win64/undo
set grepprg=C:/cygwin64/bin/grep\ -nH
"�܂�Ԃ��Ȃ�
set nowrap
"�������s�Ȃ�
set tw=0
" ��`�I���ōs���𒴂��ău���b�N��I���ł���悤�ɂ���                                                                                                              
set virtualedit+=block
" �������W�X�^�ɓ���f�[�^���A*���W�X�^�ɂ������B
set clipboard+=unnamed
" �J�[�\���̂���s�������\������
set cursorline

"�����ʂ��������͂���
inoremap ( ()<Left>
inoremap [ []<Left>
"�����ʂ͊֐����ۂ�
inoremap {<Enter> {}<Left><CR><ESC><S-o>

"���ݓ����̑}��
nnoremap t <Nop>
nnoremap ts <ESC>i<C-r>=strftime("%Y/%m/%d %H:%M:%S")<CR><ESC>
nnoremap td <ESC>i<C-r>=strftime("%Y/%m/%d")<CR><ESC>
nnoremap tD <ESC>i<C-r>=strftime("%m/%d")<CR><ESC>
nnoremap tt <ESC>i<C-r>=strftime("%H:%M:%S")<CR><ESC>
nnoremap th <ESC>i<C-r>=strftime("%H")<CR><ESC>
nnoremap tm <ESC>i<C-r>=strftime("%H:%M")<CR><ESC>
nnoremap tM <ESC>i<C-r>=strftime("%m/%d %H:%M")<CR><ESC>
nnoremap to <ESC>o<ESC>i<C-r>=strftime("%H:%M ")<CR><CR><TAB>
nnoremap tO <ESC>O<ESC>i<C-r>=strftime("%H:%M ")<CR>
nnoremap t; <ESC>i<C-r>=strftime("%Y/%m/%d")<CR><CR><ESC>070i-<ESC>
nnoremap T <Nop>
nnoremap Ts <ESC>a<C-r>=strftime("%Y/%m/%d %H:%M:%S")<CR><ESC>
nnoremap Td <ESC>a<C-r>=strftime("%Y/%m/%d")<CR><ESC>
nnoremap TD <ESC>a<C-r>=strftime("%m/%d")<CR><ESC>
nnoremap Tt <ESC>a<C-r>=strftime("%H:%M:%S")<CR><ESC>
nnoremap Th <ESC>a<C-r>=strftime("%H")<CR><ESC>
nnoremap Tm <ESC>a<C-r>=strftime("%H:%M")<CR><ESC>
nnoremap TM <ESC>i<C-r>=strftime("%m/%d %H:%M")<CR><ESC>
nnoremap To <ESC>o<C-r>=strftime("%H:%M ")<CR>
"���C��������
nnoremap tl <ESC>070i-<ESC>

"�^�u�ƃE�B���h�E�̑����s�L�[�Ɋ��蓖�Ă�
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
nnoremap st :<C-u>tabnew<CR>:E<CR>
nnoremap sT :<C-u>tabnew<CR>
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR>

" �������ʂ���ʒ����Ɏ����Ă���
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz

" ���̓��[�h�ł̃J�[�\���ړ�
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-J> <C-Down>
inoremap <C-K> <C-Up>
inoremap <C-H> <C-Left>
inoremap <C-L> <C-Right>
"�^�C���X�^���v��}������insert���[�h�ֈڍs
inoremap <C-s> <ESC>a<C-R>=strftime("[%Y/%m/%d %H:%M] ")<CR>
inoremap <C-d> <ESC>a<C-R>=strftime("[%Y/%m/%d] ")<CR>

"grep"
nnoremap <C-g> :grep -nrI --exclude=*.svn* "<C-r><C-w>" . |cw<CR>

"Gtags�L�[�o�C���h
"�J�[�\���̒P��̊֐��փW�����v
nnoremap <C-]> :Gtags <C-r><C-w><CR>
nnoremap <C-t> :Gtags -f %<CR>

" ���̑��֗������ȃL�[�o�C���h
" Esc2��Ō����̃n�C���C�g������
nnoremap <Esc><Esc> :noh<CR>
" grep�̌������ʂ̈ړ�
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
"�^�C���X�^���v�}��
nnoremap dt <ESC>i<C-R>=strftime("%H:%M")<CR><CR>
"Y�ōs���܂ŃR�s�[
nnoremap Y y$
"vimrc���X�y�[�X�h�b�g�ŊJ��
nnoremap <space>. :<c-u>tabedit $MYVIMRC<CR>

nnoremap <space>, :<c-u>tabedit $MYGVIMRC<CR>

"F5��C���R���p�C�������s
command! Gcc call s:Gcc()
nmap <F5> :Gcc<CR>

function! s:Gcc()
    :w
        :!gcc % -o %.out
        :!%.out
endfunction

" �܂��݂̏�Ԃ�ۑ�����
"autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
"autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent loadview | endif
" �o�b�t�@�̃I�v�V�����͕ۑ����Ȃ�
"set viewoptions-=options


" netrw.vim�̃J�X�^�}�C�Y
" netrw�͏��tree view
let g:netrw_liststyle = 3
" 'v'�Ńt�@�C�����J���Ƃ��͉E���ɊJ���B(�f�t�H���g�������Ȃ̂œ���ւ�)
let g:netrw_altv = 1
" 'o'�Ńt�@�C�����J���Ƃ��͉����ɊJ���B(�f�t�H���g���㑤�Ȃ̂œ���ւ�)
let g:netrw_alto = 1
" �w��̃t�@�C����\�����Ȃ�
let g:netrw_list_hide = '\.bin,\.obj,\.abs,\.frm,\.frp,\.mot,\.sal,\.sni,\.sub,\.suf,\.sus,\.swp,\.lib,\.d,\.d2'

"vimgrep�̌����Ώۂ������̊g���q���̃t�@�C�������O����
"vimgrep��p�̐ݒ�ł͂Ȃ��悤�Ȃ̂ő��̃R�}���h�ɂ��e��������炵��
:set wildignore=*.abs,*.lib,*.bin,*frm,*.obj,*.exe

"�S�p�̃n�C���C�g
augroup highlightIdegraphicSpace
  autocmd!
  autocmd Colorscheme * highlight IdeographicSpace term=underline ctermbg=DarkGreen guibg=#cccccc
  autocmd VimEnter,WinEnter * match IdeographicSpace /�@/
augroup END

" md as markdown, instead of modula2
augroup MyAutoGroup_test
  autocmd!
  autocmd! BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
" swift�̃V���^�b�N�X�n�C���C�g��ǉ�
au BufRead,BufNewFile *.swift set filetype=swift

" �t�@�C���G���R�[�f�B���O�D�揇��
set fileencodings=sjis,utf-8

" case���ŃC���f���g���Ȃ�
set cinoptions+=:0

" quickfix�̃G���[�t�H�[�}�b�g
"set errorformat+='%f(%l):%m'


"���j���[�o�[���\���ɂ���
"set guioptions-=m
"�c�[���o�[���\���ɂ���
set guioptions-=T
"���E�̃X�N���[���o�[���\���ɂ���
"set guioptions-=r
"set guioptions-=R
"set guioptions-=l
"set guioptions-=L
"�����X�N���[���o�[���\���ɂ���
"set guioptions-=b
