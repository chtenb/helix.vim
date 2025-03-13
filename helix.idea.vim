" This file was compiled by helix.vim/compile.sh

""""""""""""""""""""""""""""""""
" Disable default vim bindings "
""""""""""""""""""""""""""""""""

" List all keys for completeness, but only disable keys that are not remapped by helix.vim

" Move cursor left
"noremap a <nop>
" Move to the beginning of previous word
"noremap b <nop>
" Change command
"noremap c <nop>
" Delete command
"noremap d <nop>
" Move to the end of word
"noremap e <nop>
"" Find a character after the cursor in the line
noremap f <nop>
" Various commands prefixed with 'g'
noremap g <nop>
" Move cursor left
"noremap h <nop>
" Insert mode
"noremap i <nop>
" Move cursor down
"noremap j <nop>
" Move cursor up
"noremap k <nop>
" Move cursor right
"noremap l <nop>
" Set mark
noremap m <nop>
" Repeat last search
"noremap n <nop>
" Open a new line below and enter insert mode
"noremap o <nop>
" Put after the cursor
"noremap p <nop>
" Start recording a macro
noremap q <nop>
" Replace a single character
"noremap r <nop>
" Substitute a single character with new text
noremap s <nop>
" Till - find a character in the line
"noremap t <nop>
" Undo
"noremap u <nop>
" Start visual mode
"noremap v <nop>
" Move cursor forward to the beginning of a word
"noremap w <nop>
" Delete a single character
"noremap x <nop>
" Yank command
"noremap y <nop>
" Various commands prefixed with 'z' to modify the view
noremap z <nop>


" Append text at the end of the line
"noremap A <nop>
" Move backward by space-separated words
"noremap B <nop>
" Change text from the cursor position to the end of the line
noremap C <nop>
" Delete from the cursor to the end of the line
noremap D <nop>
" Move to the end of a space-separated word
"noremap E <nop>
" Find a character before the cursor in the line
"noremap F <nop>
" Go to the specified line (default: end of the file)
noremap G <nop>
" Move the cursor to the top of the screen
noremap H <nop>
" Insert text at the beginning of the line
"noremap I <nop>
" Join the current line with the next one
"noremap J <nop>
" Look up the keyword under the cursor (manpage, help file, etc.)
noremap K <nop>
" Move the cursor to the bottom of the screen
noremap L <nop>
" Move the cursor to the middle of the screen
noremap M <nop>
" Repeat the last search, but in the opposite direction
noremap N <nop>
" Open a new line above the current one and enter insert mode
"noremap O <nop>
" Put before the cursor
"noremap P <nop>
" Enter Ex mode
noremap Q <nop>
" Enter replace mode
"noremap R <nop>
" Substitute entire line
noremap S <nop>
" Till - find a character in the line before the cursor
"noremap T <nop>
" Undo all changes to the line
"noremap U <nop>
" Start visual line mode
noremap V <nop>
" Move forward by space-separated words
"noremap W <nop>
" Delete a character before the cursor
"noremap X <nop>
" Yank the entire line
noremap Y <nop>
" Z is used as a hanging key bind for extend mode
noremap ZZ <nop>
noremap ZQ <nop>


" Move to the end of the line
noremap $ <nop>
" Move to the first non-blank character of the line
noremap ^ <nop>
" Search for the word under the cursor
noremap * <nop>
" Change the case of the character under the cursor
noremap ~ <nop>
" Reverse direction find character
noremap , <nop>
" Repeat last change
noremap . <nop>
" Command-line window
noremap <Bar> <nop>
" Move to the first non-blank character of the next line
noremap + <nop>
" Move to the first non-blank character of the previous line
noremap - <nop>
" Like - but count is line number relative to the cursor
noremap _ <nop>
" Shift lines left
noremap < <nop>
" Shift lines right
noremap > <nop>
" Start command-line
"noremap : <nop>
" Repeat latest f, t, F or T [count] times
noremap ; <nop>
" Filter lines through an external program
noremap ! <nop>
" Find the next item in this line after or under the cursor and jump to its match.
noremap % <nop>
" Move to the exact position of the mark
noremap ` <nop>
" Various commands to move the cursor, typically paired with another character
noremap ] <nop>
" Similar to ], used for various cursor movement commands
noremap [ <nop>
" Move to the beginning of the line of the mark
noremap ' <nop>
" Access named register
noremap " <nop>
" Repeat the last :substitute command
noremap & <nop>
" Start forward search
"noremap / <nop>
" Start backward search
noremap ? <nop>
" Auto-indent lines
noremap = <nop>
" Move to the previous sentence
noremap ( <nop>
" Move to the next sentence
noremap ) <nop>
" Move to the previous paragraph
noremap { <nop>
" Move to the next paragraph
noremap } <nop>
" Increment number
"noremap <C-a> <nop>
" Decrement number
"noremap <C-x> <nop>
" Jump to the tag underneath the cursor
noremap <C-]> <nop>
" Used for window commands
"noremap <C-w> <nop>
"noremap <C-^> <nop>
noremap <C-,> <nop>
noremap <C-.> <nop>
noremap <C-v> <nop>

" TODO: enhance this list to work for all bindings in extend mode, such that extend mode is not left upon pressing an unbound keystroke

"""""""""""""""""""
" Helix emulation "
"""""""""""""""""""
" TODO: checkout https://vimhelp.org/options.txt.html#%27selection%27
" and https://vimhelp.org/options.txt.html#%27virtualedit%27
set notimeout
" Do not restrict movements to lines
set whichwrap=<,>,h,l,[,]

" No range selections in command mode
xnoremap : <Esc>:
" Re-enter visual mode after command/insert mode
cnoremap <CR> <CR>
cnoremap <Esc> <Esc>
inoremap <Esc> <Esc>
xnoremap <Esc> <nop>
nmap v vv

"nnoremap b :silent! normal! b<CR>
"nnoremap l :silent! normal! l<CR>
"nnoremap e :silent! normal! e<CR>

" Movement
xnoremap h <Esc>h
xnoremap <Left> <Esc>h
xnoremap l <Esc>l
xnoremap <Right> <Esc>l
xnoremap j <Esc>gj
xnoremap <Down> <Esc>gj
xnoremap k <Esc>gk
xnoremap <Up> <Esc>gk
" All commands using marks must make sure to overwrite a,b,c before usage.
" Note that [` and ]` will break if any other lowercase marks are in use.
" TODO: the following keys do not behave the same as Helix around newlines
" TODO: make sure movement near file start or end does not break out of helix mode
noremap e <Esc>maembviwovbviwvlmc`blmbhvl[`o
noremap E <Esc>maEmbviWovBviWvlmc`blmbhvl[`o
noremap w <Esc>malwhmb`aeviwovmc`blmbhvl[`o
noremap W <Esc>malWhmb`aEviWovmc`blmbhvl[`o
noremap b <Esc>mabmbviwveviwovhmc`bhmblvh]`o
noremap B <Esc>maBmbviWovEviWvhmc`bhmblvh]`o
" TODO: make these motions work across lines
noremap t <Esc>vt
noremap T <Esc>vT
noremap f <Esc>vf
noremap F <Esc>vF
xnoremap G Gvv
xnoremap <A-.> <Esc>v;
xnoremap <Home> <Esc>0v
xnoremap <End> <Esc>$v
xnoremap <C-b> <Esc><C-b>v
xnoremap <PageDown> <Esc><C-b>v
xnoremap <C-f> <Esc><C-f>v
xnoremap <PageUp> <Esc><C-f>v
xnoremap <C-u> <Esc><C-u>v
xnoremap <C-d> <Esc><C-d>v
xnoremap <C-i> <Esc><C-i>v
xnoremap <C-o> <Esc><C-o>v
nnoremap j gj
nnoremap k gk

" Changes
" r is defined in replace.vim
xnoremap R "_d""P`[v`]
nmap R vR
xnoremap ~ ~gv
nnoremap ~ v~
xnoremap ` ugv
nnoremap ` vu
xnoremap <A-`> Ugv
nnoremap <A-`> vU
xnoremap i <Esc>`<i
xnoremap a <Esc>`>a
xnoremap I <Esc>`<I
xnoremap A <Esc>`>A
xnoremap o <Esc>`>o <BS>
nnoremap o o <BS>
xnoremap O <Esc>`<O <BS>
nnoremap O O <BS>
xnoremap . <Esc>`<.
nnoremap . .
xnoremap u <Esc>uv
xnoremap U <Esc><C-R>v
" TODO: not sure what this should do
noremap <A-u> gv
" TODO: not sure what this should do
xnoremap <A-U> <Esc><C-R>v
xnoremap y ygv
nnoremap y vy
xnoremap p <Esc>`>pgv
xnoremap P <Esc>`<Pgv
" TODO: why don't the register work properly?
xnoremap " "
nnoremap " v"
xnoremap > >gv
nnoremap > >>
xnoremap < <gv
nnoremap < <<
xnoremap = =gv
xnoremap d dv
nnoremap d vd
xnoremap <A-d> "_dv
nnoremap <A-d> v"_d
xnoremap c c
nnoremap c vc
xnoremap <A-c> "_c
xnoremap <C-a> <Esc><C-a>v
xnoremap <C-x> <Esc><C-x>v
" TODO: macros
nnoremap U <C-R>

" Shell
" TODO

" Selection manipulation
" Poor mans multi cursor mode
set gdefault
noremap s :s/
noremap S <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-s> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-_> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap & <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap _ <Esc>:echo "Not implemented"<CR>gsgv
xnoremap ; <Esc>
nnoremap ; <nop>
xnoremap <A-;> o
nnoremap <A-;> <nop>
xnoremap <A-:> <Esc>`<v`>
nnoremap <A-:> <nop>
noremap , <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-,> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap C <Esc>:echo "Not implemented"<CR>gsgv
noremap <A-C> <Esc>:echo "Not implemented"<CR>gsgv
noremap ( <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap ) <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-(> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-)> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap % <Esc>gg0vG$
noremap <A-x> <Esc>:echo "Not implemented"<CR>gsgv
xnoremap J Jgv
noremap <A-J> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap K <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-K> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <C-c> <Esc>:echo "Not implemented"<CR>gsgv
" This could perhaps be approached with b% or something
noremap <A-o> <Esc>:echo "Not implemented"<CR>gsgv
noremap <A-i> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-p> <Esc>:echo "Not supported in VIM"<CR>gsgv
noremap <A-n> <Esc>:echo "Not supported in VIM"<CR>gsgv
nnoremap % gg0vG$

" Search
xnoremap / <Esc>/
xnoremap ? <Esc>?
xnoremap n <Esc>gngnvgn
xnoremap N <Esc>gNgNvgN
" This may not work in all emulators
vnoremap * y/\V<C-R>=escape(@",'/\')<CR><CR>Ngv
nnoremap n gngnvgn
nnoremap N gNgNvgN

" Goto mode
xnoremap gg <Esc>gg
xnoremap ge <Esc>G
xnoremap gf gf
xnoremap gl <Esc>$
xnoremap gh <Esc>0
xnoremap gs <Esc>^
xnoremap gt <Esc>H
xnoremap gc <Esc>M
xnoremap gb <Esc>L
xnoremap gd <Esc>gD
xnoremap gy <Esc>:echo "Not implemented"<CR>gsgv
xnoremap gr <Esc>:echo "Not implemented"<CR>gsgv
xnoremap gi <Esc>:echo "Not implemented"<CR>gsgv
xnoremap ga <Esc><C-^>
xnoremap gm <Esc>:echo "Not implemented"<CR>gsgv
xnoremap gn <Esc>:next<CR>
xnoremap gp <Esc>:previous<CR>
xnoremap g. <Esc>`^
xnoremap gj <Esc>j
xnoremap gk <Esc>k
nnoremap gg gg
nnoremap ge G
nnoremap gf gf
nnoremap gl $
nnoremap gh 0
nnoremap gs ^
nnoremap gt H
nnoremap gc M
nnoremap gb L
nnoremap gd gD
nnoremap gy :echo "Not implemented"<CR>
nnoremap gr :echo "Not implemented"<CR>
nnoremap gi :echo "Not implemented"<CR>
nnoremap ga <C-^>
nnoremap gm :echo "Not implemented"<CR>
nnoremap gn :next<CR>
nnoremap gp :previous<CR>
nnoremap g. `^
nnoremap gj j
nnoremap gk k

" Match mode
nnoremap mm %
xnoremap mm <Esc>%v
nnoremap ms( i(<Esc>la)<Esc>hhvll
nnoremap ms) i(<Esc>la)<Esc>hhvll
nnoremap ms[ i[<Esc>la]<Esc>hhvll
nnoremap ms] i[<Esc>la]<Esc>hhvll
nnoremap ms{ i{<Esc>la}<Esc>hhvll
nnoremap ms} i{<Esc>la}<Esc>hhvll
nnoremap ms< i<<Esc>la><Esc>hhvll
nnoremap ms> i<<Esc>la><Esc>hhvll
nnoremap ms' i'<Esc>la'<Esc>hhvll
nnoremap ms" i"<Esc>la"<Esc>hhvll
nnoremap ms` i`<Esc>la`<Esc>hhvll
nnoremap ms~ i~<Esc>la~<Esc>hhvll
nnoremap ms/ i/<Esc>la/<Esc>hhvll
nnoremap ms_ i_<Esc>la_<Esc>hhvll
nnoremap ms- i-<Esc>la-<Esc>hhvll
nnoremap ms* i*<Esc>la*<Esc>hhvll
nnoremap ms: i:<Esc>la:<Esc>hhvll
nnoremap ms= i=<Esc>la=<Esc>hhvll
nnoremap ms<Bar> i<Bar><Esc>la<Bar><Esc>hhvll
xnoremap ms( <Esc>`<i(<Esc>`>la)<Esc>`<lv`>l
xnoremap ms) <Esc>`<i(<Esc>`>la)<Esc>`<lv`>l
xnoremap ms[ <Esc>`<i[<Esc>`>la]<Esc>`<lv`>l
xnoremap ms] <Esc>`<i[<Esc>`>la]<Esc>`<lv`>l
xnoremap ms{ <Esc>`<i{<Esc>`>la}<Esc>`<lv`>l
xnoremap ms} <Esc>`<i{<Esc>`>la}<Esc>`<lv`>l
xnoremap ms< <Esc>`<i<<Esc>`>la><Esc>`<lv`>l
xnoremap ms> <Esc>`<i<<Esc>`>la><Esc>`<lv`>l
xnoremap ms' <Esc>`<i'<Esc>`>la'<Esc>`<lv`>l
xnoremap ms" <Esc>`<i"<Esc>`>la"<Esc>`<lv`>l
xnoremap ms` <Esc>`<i`<Esc>`>la`<Esc>`<lv`>l
xnoremap ms~ <Esc>`<i~<Esc>`>la~<Esc>`<lv`>l
xnoremap ms/ <Esc>`<i/<Esc>`>la/<Esc>`<lv`>l
xnoremap ms_ <Esc>`<i_<Esc>`>la_<Esc>`<lv`>l
xnoremap ms- <Esc>`<i-<Esc>`>la-<Esc>`<lv`>l
xnoremap ms* <Esc>`<i*<Esc>`>la*<Esc>`<lv`>l
xnoremap ms: <Esc>`<i:<Esc>`>la:<Esc>`<lv`>l
xnoremap ms= <Esc>`<i=<Esc>`>la=<Esc>`<lv`>l
xnoremap ms<Bar> <Esc>`<i<Bar><Esc>`>la<Bar><Esc>`<lv`>l
noremap mr <Esc>:echo "Not implemented"<CR>gsgv
noremap md <Esc>:echo "Not implemented"<CR>gsgv
noremap maw <Esc>vaw
noremap maW <Esc>vaW
noremap map <Esc>vap
noremap ma( <Esc>va(
noremap ma{ <Esc>va{
noremap ma< <Esc>va<
noremap ma[ <Esc>va[
noremap ma' <Esc>va'
noremap ma" <Esc>va"
noremap ma` <Esc>va`
noremap ma~ <Esc>va~
noremap mat <Esc>:echo "Not implemented"<CR>gsgv
noremap maf <Esc>:echo "Not implemented"<CR>gsgv
noremap maa <Esc>:echo "Not implemented"<CR>gsgv
noremap mac <Esc>:echo "Not implemented"<CR>gsgv
noremap maT <Esc>:echo "Not implemented"<CR>gsgv
noremap mam <Esc>:echo "Not implemented"<CR>gsgv
noremap miw <Esc>viw
noremap miW <Esc>viW
noremap mip <Esc>vip
noremap mi( <Esc>vi(
noremap mi{ <Esc>vi{
noremap mi< <Esc>vi<
noremap mi[ <Esc>vi[
noremap mi' <Esc>vi'
noremap mi" <Esc>vi"
noremap mi` <Esc>vi`
noremap mi~ <Esc>vi~
noremap mit <Esc>:echo "Not implemented"<CR>gsgv
noremap mif <Esc>:echo "Not implemented"<CR>gsgv
noremap mia <Esc>:echo "Not implemented"<CR>gsgv
noremap mic <Esc>:echo "Not implemented"<CR>gsgv
noremap miT <Esc>:echo "Not implemented"<CR>gsgv
xnoremap mim <Esc>`>f]ma`>f}mb`>f)mc`>f"md`>f'me`>f>mf`>`]`v%
"nnoremap mim v<Esc>`>f]ma`>f}mb`>f)mc`>f"md`>f'me`>f>mf`>`]`v%
" TODO: The above does not work because the mapping is canceled when a character is not found
nnoremap mim v<Esc>`>f)mb`>]`v%

" Window mode
noremap <Space>w <C-w>

" Space mode
" TODO: almost nothing is supported out of the box
" TODO: investigate select pasted text?
xnoremap <Space>p <Esc>"*p
xnoremap <Space>P <Esc>"*P
xnoremap <Space>y "*yg
xnoremap <Space>Y "*yg
xnoremap <Space>R "*p
nnoremap <Space>p "*p
nnoremap <Space>P "*P
nnoremap <Space>y v"*y
nnoremap <Space>Y v"*y
nnoremap <Space>R v"*pv

" Unimpaired / Bracket mode
" TODO
xnoremap ]p <Esc>v}
xnoremap [p <Esc>v{
nnoremap ]p v}
nnoremap [p v{
xnoremap ]<Space> o<Esc>gv
nnoremap ]<Space> vvo<Esc>gv
xnoremap [<Space> O<Esc>gv
nnoremap [<Space> vvO<Esc>gv
noremap ]d <Esc>:cnext<CR>
noremap [d <Esc>:cprevious<CR>

" Select / extend
" TODO: generate for all normal mode keys in a separate file
xnoremap vv <nop>
xnoremap v<Esc> <nop>

" Movements
xnoremap Zl l
xnoremap Zh h
xnoremap Zj gj
xnoremap Zk gk
xnoremap Ze e
xnoremap Zw w
xnoremap Zb b
xnoremap ZE E
xnoremap ZW W
xnoremap ZB B
xnoremap Zgl $h
xnoremap Zgh 0
xnoremap Zgs ^
xnoremap Zge G
xnoremap Z<A-;> o
xnoremap Zmm %
xnoremap Zgf gf
" TODO: all other match mode operators

xmap vl Zlv
xmap vl Zlv
xmap vh Zhv
xmap vj Zjv
xmap vk Zkv
xmap ve Zev
xmap vw Zwv
xmap vb Zbv
xmap vE ZEv
xmap vW ZWv
xmap vB ZBv
xmap vgl Zglv
xmap vgh Zghv
xmap vgs Zgsv
xmap vge Zgev
xmap v<A-;> Z<A-;>v
xmap vmm Zmmv
xmap vgf Zgf

" Operations
xmap vc c
xmap vr r
xmap vR R
xmap vy y
xmap vo o
xmap vO O
xmap vp p
xmap vP P
xmap va a
xmap vA A
xmap vd d
xmap v<A-d> <A-d>
xmap v> >
xmap v< <
xmap vX X
xmap vx x
xmap v<Space>y <Space>y
xmap v<Space>Y <Space>Y
xmap v<Space>R <Space>R

xmap vms( ms(
xmap vms) ms)
xmap vms[ ms[
xmap vms] ms]
xmap vms{ ms{
xmap vms} ms}
xmap vms< ms<
xmap vms> ms>
xmap vms' ms'
xmap vms" ms"
xmap vms` ms`
xmap vms~ ms~
xmap vms/ ms/
xmap vms_ ms_
xmap vms- ms-
xmap vms* ms*
xmap vms: ms:
xmap vms= ms=
xmap vms<Bar> ms<Bar>


" Select / extend for f/t/F/T is defined in find.vim

" Visual / normal mode mix
noremap ZV V
map x ZVv
xmap vx Zjv
noremap X 0V
" In extend mode, make sure that f/t/F/T stays in extend mode
" Every key stroke x needs the following pair of maps
" xnoremap Zfx fx
" xmap vfx Zfxv
" TODO: document the problem that a not-found results in exiting extend mode due to Vim's error behavior
xnoremap Zf1 f1
xmap vf1 Zf1v
xnoremap Zf2 f2
xmap vf2 Zf2v
xnoremap Zf3 f3
xmap vf3 Zf3v
xnoremap Zf4 f4
xmap vf4 Zf4v
xnoremap Zf5 f5
xmap vf5 Zf5v
xnoremap Zf6 f6
xmap vf6 Zf6v
xnoremap Zf7 f7
xmap vf7 Zf7v
xnoremap Zf8 f8
xmap vf8 Zf8v
xnoremap Zf9 f9
xmap vf9 Zf9v
xnoremap Zf0 f0
xmap vf0 Zf0v
xnoremap Zf- f-
xmap vf- Zf-v
xnoremap Zf= f=
xmap vf= Zf=v
xnoremap Zfq fq
xmap vfq Zfqv
xnoremap Zfw fw
xmap vfw Zfwv
xnoremap Zfe fe
xmap vfe Zfev
xnoremap Zfr fr
xmap vfr Zfrv
xnoremap Zft ft
xmap vft Zftv
xnoremap Zfy fy
xmap vfy Zfyv
xnoremap Zfu fu
xmap vfu Zfuv
xnoremap Zfi fi
xmap vfi Zfiv
xnoremap Zfo fo
xmap vfo Zfov
xnoremap Zfp fp
xmap vfp Zfpv
xnoremap Zf[ f[
xmap vf[ Zf[v
xnoremap Zf] f]
xmap vf] Zf]v
xnoremap Zf\ f\
xmap vf\ Zf\v
xnoremap Zfa fa
xmap vfa Zfav
xnoremap Zfs fs
xmap vfs Zfsv
xnoremap Zfd fd
xmap vfd Zfdv
xnoremap Zff ff
xmap vff Zffv
xnoremap Zfg fg
xmap vfg Zfgv
xnoremap Zfh fh
xmap vfh Zfhv
xnoremap Zfj fj
xmap vfj Zfjv
xnoremap Zfk fk
xmap vfk Zfkv
xnoremap Zfl fl
xmap vfl Zflv
xnoremap Zf; f;
xmap vf; Zf;v
xnoremap Zf' f'
xmap vf' Zf'v
xnoremap Zfz fz
xmap vfz Zfzv
xnoremap Zfx fx
xmap vfx Zfxv
xnoremap Zfc fc
xmap vfc Zfcv
xnoremap Zfv fv
xmap vfv Zfvv
xnoremap Zfb fb
xmap vfb Zfbv
xnoremap Zfn fn
xmap vfn Zfnv
xnoremap Zfm fm
xmap vfm Zfmv
xnoremap Zf, f,
xmap vf, Zf,v
xnoremap Zf. f.
xmap vf. Zf.v
xnoremap Zf/ f/
xmap vf/ Zf/v
xnoremap Zf~ f~
xmap vf~ Zf~v
xnoremap Zf! f!
xmap vf! Zf!v
xnoremap Zf@ f@
xmap vf@ Zf@v
xnoremap Zf# f#
xmap vf# Zf#v
xnoremap Zf$ f$
xmap vf$ Zf$v
xnoremap Zf% f%
xmap vf% Zf%v
xnoremap Zf^ f^
xmap vf^ Zf^v
xnoremap Zf& f&
xmap vf& Zf&v
xnoremap Zf* f*
xmap vf* Zf*v
xnoremap Zf( f(
xmap vf( Zf(v
xnoremap Zf) f)
xmap vf) Zf)v
xnoremap Zf_ f_
xmap vf_ Zf_v
xnoremap Zf+ f+
xmap vf+ Zf+v
xnoremap ZfQ fQ
xmap vfQ ZfQv
xnoremap ZfW fW
xmap vfW ZfWv
xnoremap ZfE fE
xmap vfE ZfEv
xnoremap ZfR fR
xmap vfR ZfRv
xnoremap ZfT fT
xmap vfT ZfTv
xnoremap ZfY fY
xmap vfY ZfYv
xnoremap ZfU fU
xmap vfU ZfUv
xnoremap ZfI fI
xmap vfI ZfIv
xnoremap ZfO fO
xmap vfO ZfOv
xnoremap ZfP fP
xmap vfP ZfPv
xnoremap Zf{ f{
xmap vf{ Zf{v
xnoremap Zf} f}
xmap vf} Zf}v
xnoremap Zf<Bar> f<Bar>
xmap vf<Bar> Zf<Bar>v
xnoremap ZfA fA
xmap vfA ZfAv
xnoremap ZfS fS
xmap vfS ZfSv
xnoremap ZfD fD
xmap vfD ZfDv
xnoremap ZfF fF
xmap vfF ZfFv
xnoremap ZfG fG
xmap vfG ZfGv
xnoremap ZfH fH
xmap vfH ZfHv
xnoremap ZfJ fJ
xmap vfJ ZfJv
xnoremap ZfK fK
xmap vfK ZfKv
xnoremap ZfL fL
xmap vfL ZfLv
xnoremap Zf: f:
xmap vf: Zf:v
xnoremap Zf" f"
xmap vf" Zf"v
xnoremap ZfZ fZ
xmap vfZ ZfZv
xnoremap ZfX fX
xmap vfX ZfXv
xnoremap ZfC fC
xmap vfC ZfCv
xnoremap ZfV fV
xmap vfV ZfVv
xnoremap ZfB fB
xmap vfB ZfBv
xnoremap ZfN fN
xmap vfN ZfNv
xnoremap ZfM fM
xmap vfM ZfMv
xnoremap Zf< f<
xmap vf< Zf<v
xnoremap Zf> f>
xmap vf> Zf>v
xnoremap Zf? f?
xmap vf? Zf?v

xnoremap ZF1 F1
xmap vF1 ZF1v
xnoremap ZF2 F2
xmap vF2 ZF2v
xnoremap ZF3 F3
xmap vF3 ZF3v
xnoremap ZF4 F4
xmap vF4 ZF4v
xnoremap ZF5 F5
xmap vF5 ZF5v
xnoremap ZF6 F6
xmap vF6 ZF6v
xnoremap ZF7 F7
xmap vF7 ZF7v
xnoremap ZF8 F8
xmap vF8 ZF8v
xnoremap ZF9 F9
xmap vF9 ZF9v
xnoremap ZF0 F0
xmap vF0 ZF0v
xnoremap ZF- F-
xmap vF- ZF-v
xnoremap ZF= F=
xmap vF= ZF=v
xnoremap ZFq Fq
xmap vFq ZFqv
xnoremap ZFw Fw
xmap vFw ZFwv
xnoremap ZFe Fe
xmap vFe ZFev
xnoremap ZFr Fr
xmap vFr ZFrv
xnoremap ZFt Ft
xmap vFt ZFtv
xnoremap ZFy Fy
xmap vFy ZFyv
xnoremap ZFu Fu
xmap vFu ZFuv
xnoremap ZFi Fi
xmap vFi ZFiv
xnoremap ZFo Fo
xmap vFo ZFov
xnoremap ZFp Fp
xmap vFp ZFpv
xnoremap ZF[ F[
xmap vF[ ZF[v
xnoremap ZF] F]
xmap vF] ZF]v
xnoremap ZF\ F\
xmap vF\ ZF\v
xnoremap ZFa Fa
xmap vFa ZFav
xnoremap ZFs Fs
xmap vFs ZFsv
xnoremap ZFd Fd
xmap vFd ZFdv
xnoremap ZFf Ff
xmap vFf ZFfv
xnoremap ZFg Fg
xmap vFg ZFgv
xnoremap ZFh Fh
xmap vFh ZFhv
xnoremap ZFj Fj
xmap vFj ZFjv
xnoremap ZFk Fk
xmap vFk ZFkv
xnoremap ZFl Fl
xmap vFl ZFlv
xnoremap ZF; F;
xmap vF; ZF;v
xnoremap ZF' F'
xmap vF' ZF'v
xnoremap ZFz Fz
xmap vFz ZFzv
xnoremap ZFx Fx
xmap vFx ZFxv
xnoremap ZFc Fc
xmap vFc ZFcv
xnoremap ZFv Fv
xmap vFv ZFvv
xnoremap ZFb Fb
xmap vFb ZFbv
xnoremap ZFn Fn
xmap vFn ZFnv
xnoremap ZFm Fm
xmap vFm ZFmv
xnoremap ZF, F,
xmap vF, ZF,v
xnoremap ZF. F.
xmap vF. ZF.v
xnoremap ZF/ F/
xmap vF/ ZF/v
xnoremap ZF~ F~
xmap vF~ ZF~v
xnoremap ZF! F!
xmap vF! ZF!v
xnoremap ZF@ F@
xmap vF@ ZF@v
xnoremap ZF# F#
xmap vF# ZF#v
xnoremap ZF$ F$
xmap vF$ ZF$v
xnoremap ZF% F%
xmap vF% ZF%v
xnoremap ZF^ F^
xmap vF^ ZF^v
xnoremap ZF& F&
xmap vF& ZF&v
xnoremap ZF* F*
xmap vF* ZF*v
xnoremap ZF( F(
xmap vF( ZF(v
xnoremap ZF) F)
xmap vF) ZF)v
xnoremap ZF_ F_
xmap vF_ ZF_v
xnoremap ZF+ F+
xmap vF+ ZF+v
xnoremap ZFQ FQ
xmap vFQ ZFQv
xnoremap ZFW FW
xmap vFW ZFWv
xnoremap ZFE FE
xmap vFE ZFEv
xnoremap ZFR FR
xmap vFR ZFRv
xnoremap ZFT FT
xmap vFT ZFTv
xnoremap ZFY FY
xmap vFY ZFYv
xnoremap ZFU FU
xmap vFU ZFUv
xnoremap ZFI FI
xmap vFI ZFIv
xnoremap ZFO FO
xmap vFO ZFOv
xnoremap ZFP FP
xmap vFP ZFPv
xnoremap ZF{ F{
xmap vF{ ZF{v
xnoremap ZF} F}
xmap vF} ZF}v
xnoremap ZF<Bar> F<Bar>
xmap vF<Bar> ZF<Bar>v
xnoremap ZFA FA
xmap vFA ZFAv
xnoremap ZFS FS
xmap vFS ZFSv
xnoremap ZFD FD
xmap vFD ZFDv
xnoremap ZFF FF
xmap vFF ZFFv
xnoremap ZFG FG
xmap vFG ZFGv
xnoremap ZFH FH
xmap vFH ZFHv
xnoremap ZFJ FJ
xmap vFJ ZFJv
xnoremap ZFK FK
xmap vFK ZFKv
xnoremap ZFL FL
xmap vFL ZFLv
xnoremap ZF: F:
xmap vF: ZF:v
xnoremap ZF" F"
xmap vF" ZF"v
xnoremap ZFZ FZ
xmap vFZ ZfZv
xnoremap ZFX FX
xmap vFX ZFXv
xnoremap ZFC FC
xmap vFC ZFCv
xnoremap ZFV FV
xmap vFV ZFVv
xnoremap ZFB FB
xmap vFB ZFBv
xnoremap ZFN FN
xmap vFN ZFNv
xnoremap ZFM FM
xmap vFM ZFMv
xnoremap ZF< F<
xmap vF< ZF<v
xnoremap ZF> F>
xmap vF> ZF>v
xnoremap ZF? F?
xmap vF? ZF?v


xnoremap ZT1 T1
xmap vT1 ZT1v
xnoremap ZT2 T2
xmap vT2 ZT2v
xnoremap ZT3 T3
xmap vT3 ZT3v
xnoremap ZT4 T4
xmap vT4 ZT4v
xnoremap ZT5 T5
xmap vT5 ZT5v
xnoremap ZT6 T6
xmap vT6 ZT6v
xnoremap ZT7 T7
xmap vT7 ZT7v
xnoremap ZT8 T8
xmap vT8 ZT8v
xnoremap ZT9 T9
xmap vT9 ZT9v
xnoremap ZT0 T0
xmap vT0 ZT0v
xnoremap ZT- T-
xmap vT- ZT-v
xnoremap ZT= T=
xmap vT= ZT=v
xnoremap ZTq Tq
xmap vTq ZTqv
xnoremap ZTw Tw
xmap vTw ZTwv
xnoremap ZTe Te
xmap vTe ZTev
xnoremap ZTr Tr
xmap vTr ZTrv
xnoremap ZTt Tt
xmap vTt ZTtv
xnoremap ZTy Ty
xmap vTy ZTyv
xnoremap ZTu Tu
xmap vTu ZTuv
xnoremap ZTi Ti
xmap vTi ZTiv
xnoremap ZTo To
xmap vTo ZTov
xnoremap ZTp Tp
xmap vTp ZTpv
xnoremap ZT[ T[
xmap vT[ ZT[v
xnoremap ZT] T]
xmap vT] ZT]v
xnoremap ZT\ T\
xmap vT\ ZT\v
xnoremap ZTa Ta
xmap vTa ZTav
xnoremap ZTs Ts
xmap vTs ZTsv
xnoremap ZTd Td
xmap vTd ZTdv
xnoremap ZTf Tf
xmap vTf ZTfv
xnoremap ZTg Tg
xmap vTg ZTgv
xnoremap ZTh Th
xmap vTh ZThv
xnoremap ZTj Tj
xmap vTj ZTjv
xnoremap ZTk Tk
xmap vTk ZTkv
xnoremap ZTl Tl
xmap vTl ZTlv
xnoremap ZT; T;
xmap vT; ZT;v
xnoremap ZT' T'
xmap vT' ZT'v
xnoremap ZTz Tz
xmap vTz ZTzv
xnoremap ZTx Tx
xmap vTx ZTxv
xnoremap ZTc Tc
xmap vTc ZTcv
xnoremap ZTv Tv
xmap vTv ZTvv
xnoremap ZTb Tb
xmap vTb ZTbv
xnoremap ZTn Tn
xmap vTn ZTnv
xnoremap ZTm Tm
xmap vTm ZTmv
xnoremap ZT, T,
xmap vT, ZT,v
xnoremap ZT. T.
xmap vT. ZT.v
xnoremap ZT/ T/
xmap vT/ ZT/v
xnoremap ZT~ T~
xmap vT~ ZT~v
xnoremap ZT! T!
xmap vT! ZT!v
xnoremap ZT@ T@
xmap vT@ ZT@v
xnoremap ZT# T#
xmap vT# ZT#v
xnoremap ZT$ T$
xmap vT$ ZT$v
xnoremap ZT% T%
xmap vT% ZT%v
xnoremap ZT^ T^
xmap vT^ ZT^v
xnoremap ZT& T&
xmap vT& ZT&v
xnoremap ZT* T*
xmap vT* ZT*v
xnoremap ZT( T(
xmap vT( ZT(v
xnoremap ZT) T)
xmap vT) ZT)v
xnoremap ZT_ T_
xmap vT_ ZT_v
xnoremap ZT+ T+
xmap vT+ ZT+v
xnoremap ZTQ TQ
xmap vTQ ZTQv
xnoremap ZTW TW
xmap vTW ZTWv
xnoremap ZTE TE
xmap vTE ZTEv
xnoremap ZTR TR
xmap vTR ZTRv
xnoremap ZTT TT
xmap vTT ZTTv
xnoremap ZTY TY
xmap vTY ZTYv
xnoremap ZTU TU
xmap vTU ZTUv
xnoremap ZTI TI
xmap vTI ZTIv
xnoremap ZTO TO
xmap vTO ZTOv
xnoremap ZTP TP
xmap vTP ZTPv
xnoremap ZT{ T{
xmap vT{ ZT{v
xnoremap ZT} T}
xmap vT} ZT}v
xnoremap ZT<Bar> T<Bar>
xmap vT<Bar> ZT<Bar>v
xnoremap ZTA TA
xmap vTA ZTAv
xnoremap ZTS TS
xmap vTS ZTSv
xnoremap ZTD TD
xmap vTD ZTDv
xnoremap ZTF TF
xmap vTF ZTFv
xnoremap ZTG TG
xmap vTG ZTGv
xnoremap ZTH TH
xmap vTH ZTHv
xnoremap ZTJ TJ
xmap vTJ ZTJv
xnoremap ZTK TK
xmap vTK ZTKv
xnoremap ZTL TL
xmap vTL ZTLv
xnoremap ZT: T:
xmap vT: ZT:v
xnoremap ZT" T"
xmap vT" ZT"v
xnoremap ZTZ TZ
xmap vTZ ZfZv
xnoremap ZTX TX
xmap vTX ZTXv
xnoremap ZTC TC
xmap vTC ZTCv
xnoremap ZTV TV
xmap vTV ZTVv
xnoremap ZTB TB
xmap vTB ZTBv
xnoremap ZTN TN
xmap vTN ZTNv
xnoremap ZTM TM
xmap vTM ZTMv
xnoremap ZT< T<
xmap vT< ZT<v
xnoremap ZT> T>
xmap vT> ZT>v
xnoremap ZT? T?
xmap vT? ZT?v


xnoremap Zt1 t1
xmap vt1 Zt1v
xnoremap Zt2 t2
xmap vt2 Zt2v
xnoremap Zt3 t3
xmap vt3 Zt3v
xnoremap Zt4 t4
xmap vt4 Zt4v
xnoremap Zt5 t5
xmap vt5 Zt5v
xnoremap Zt6 t6
xmap vt6 Zt6v
xnoremap Zt7 t7
xmap vt7 Zt7v
xnoremap Zt8 t8
xmap vt8 Zt8v
xnoremap Zt9 t9
xmap vt9 Zt9v
xnoremap Zt0 t0
xmap vt0 Zt0v
xnoremap Zt- t-
xmap vt- Zt-v
xnoremap Zt= t=
xmap vt= Zt=v
xnoremap Ztq tq
xmap vtq Ztqv
xnoremap Ztw tw
xmap vtw Ztwv
xnoremap Zte te
xmap vte Ztev
xnoremap Ztr tr
xmap vtr Ztrv
xnoremap Ztt tt
xmap vtt Zttv
xnoremap Zty ty
xmap vty Ztyv
xnoremap Ztu tu
xmap vtu Ztuv
xnoremap Zti ti
xmap vti Ztiv
xnoremap Zto to
xmap vto Ztov
xnoremap Ztp tp
xmap vtp Ztpv
xnoremap Zt[ t[
xmap vt[ Zt[v
xnoremap Zt] t]
xmap vt] Zt]v
xnoremap Zt\ t\
xmap vt\ Zt\v
xnoremap Zta ta
xmap vta Ztav
xnoremap Zts ts
xmap vts Ztsv
xnoremap Ztd td
xmap vtd Ztdv
xnoremap Ztf tf
xmap vtf Ztfv
xnoremap Ztg tg
xmap vtg Ztgv
xnoremap Zth th
xmap vth Zthv
xnoremap Ztj tj
xmap vtj Ztjv
xnoremap Ztk tk
xmap vtk Ztkv
xnoremap Ztl tl
xmap vtl Ztlv
xnoremap Zt; t;
xmap vt; Zt;v
xnoremap Zt' t'
xmap vt' Zt'v
xnoremap Ztz tz
xmap vtz Ztzv
xnoremap Ztx tx
xmap vtx Ztxv
xnoremap Ztc tc
xmap vtc Ztcv
xnoremap Ztv tv
xmap vtv Ztvv
xnoremap Ztb tb
xmap vtb Ztbv
xnoremap Ztn tn
xmap vtn Ztnv
xnoremap Ztm tm
xmap vtm Ztmv
xnoremap Zt, t,
xmap vt, Zt,v
xnoremap Zt. t.
xmap vt. Zt.v
xnoremap Zt/ t/
xmap vt/ Zt/v
xnoremap Zt~ t~
xmap vt~ Zt~v
xnoremap Zt! t!
xmap vt! Zt!v
xnoremap Zt@ t@
xmap vt@ Zt@v
xnoremap Zt# t#
xmap vt# Zt#v
xnoremap Zt$ t$
xmap vt$ Zt$v
xnoremap Zt% t%
xmap vt% Zt%v
xnoremap Zt^ t^
xmap vt^ Zt^v
xnoremap Zt& t&
xmap vt& Zt&v
xnoremap Zt* t*
xmap vt* Zt*v
xnoremap Zt( t(
xmap vt( Zt(v
xnoremap Zt) t)
xmap vt) Zt)v
xnoremap Zt_ t_
xmap vt_ Zt_v
xnoremap Zt+ t+
xmap vt+ Zt+v
xnoremap ZtQ tQ
xmap vtQ ZtQv
xnoremap ZtW tW
xmap vtW ZtWv
xnoremap ZtE tE
xmap vtE ZtEv
xnoremap ZtR tR
xmap vtR ZtRv
xnoremap ZtT tT
xmap vtT ZtTv
xnoremap ZtY tY
xmap vtY ZtYv
xnoremap ZtU tU
xmap vtU ZtUv
xnoremap ZtI tI
xmap vtI ZtIv
xnoremap ZtO tO
xmap vtO ZtOv
xnoremap ZtP tP
xmap vtP ZtPv
xnoremap Zt{ t{
xmap vt{ Zt{v
xnoremap Zt} t}
xmap vt} Zt}v
xnoremap Zt<Bar> t<Bar>
xmap vt<Bar> Zt<Bar>v
xnoremap ZtA tA
xmap vtA ZtAv
xnoremap ZtS tS
xmap vtS ZtSv
xnoremap ZtD tD
xmap vtD ZtDv
xnoremap ZtF tF
xmap vtF ZtFv
xnoremap ZtG tG
xmap vtG ZtGv
xnoremap ZtH tH
xmap vtH ZtHv
xnoremap ZtJ tJ
xmap vtJ ZtJv
xnoremap ZtK tK
xmap vtK ZtKv
xnoremap ZtL tL
xmap vtL ZtLv
xnoremap Zt: t:
xmap vt: Zt:v
xnoremap Zt" t"
xmap vt" Zt"v
xnoremap ZtZ tZ
xmap vtZ ZfZv
xnoremap ZtX tX
xmap vtX ZtXv
xnoremap ZtC tC
xmap vtC ZtCv
xnoremap ZtV tV
xmap vtV ZtVv
xnoremap ZtB tB
xmap vtB ZtBv
xnoremap ZtN tN
xmap vtN ZtNv
xnoremap ZtM tM
xmap vtM ZtMv
xnoremap Zt< t<
xmap vt< Zt<v
xnoremap Zt> t>
xmap vt> Zt>v
xnoremap Zt? t?
xmap vt? Zt?v

xnoremap r` r`gv
xnoremap r1 r1gv
xnoremap r2 r2gv
xnoremap r3 r3gv
xnoremap r4 r4gv
xnoremap r5 r5gv
xnoremap r6 r6gv
xnoremap r7 r7gv
xnoremap r8 r8gv
xnoremap r9 r9gv
xnoremap r0 r0gv
xnoremap r- r-gv
xnoremap r= r=gv
xnoremap rq rqgv
xnoremap rw rwgv
xnoremap re regv
xnoremap rr rrgv
xnoremap rt rtgv
xnoremap ry rygv
xnoremap ru rugv
xnoremap ri rigv
xnoremap ro rogv
xnoremap rp rpgv
xnoremap r[ r[gv
xnoremap r] r]gv
xnoremap r\ r\gv
xnoremap ra ragv
xnoremap rs rsgv
xnoremap rd rdgv
xnoremap rf rfgv
xnoremap rg rggv
xnoremap rh rhgv
xnoremap rj rjgv
xnoremap rk rkgv
xnoremap rl rlgv
xnoremap r; r;gv
xnoremap r' r'gv
xnoremap rz rzgv
xnoremap rx rxgv
xnoremap rc rcgv
xnoremap rv rvgv
xnoremap rb rbgv
xnoremap rn rngv
xnoremap rm rmgv
xnoremap r, r,gv
xnoremap r. r.gv
xnoremap r/ r/gv
xnoremap r~ r~gv
xnoremap r! r!gv
xnoremap r@ r@gv
xnoremap r# r#gv
xnoremap r$ r$gv
xnoremap r% r%gv
xnoremap r^ r^gv
xnoremap r& r&gv
xnoremap r* r*gv
xnoremap r( r(gv
xnoremap r) r)gv
xnoremap r_ r_gv
xnoremap r+ r+gv
xnoremap rQ rQgv
xnoremap rW rWgv
xnoremap rE rEgv
xnoremap rR rRgv
xnoremap rT rTgv
xnoremap rY rYgv
xnoremap rU rUgv
xnoremap rI rIgv
xnoremap rO rOgv
xnoremap rP rPgv
xnoremap r{ r{gv
xnoremap r} r}gv
xnoremap r<Bar> r<Bar>gv
xnoremap rA rAgv
xnoremap rS rSgv
xnoremap rD rDgv
xnoremap rF rFgv
xnoremap rG rGgv
xnoremap rH rHgv
xnoremap rJ rJgv
xnoremap rK rKgv
xnoremap rL rLgv
xnoremap r: r:gv
xnoremap r" r"gv
xnoremap rZ rZgv
xnoremap rX rXgv
xnoremap rC rCgv
xnoremap rV rVgv
xnoremap rB rBgv
xnoremap rN rNgv
xnoremap rM rMgv
xnoremap r< r<gv
xnoremap r> r>gv
xnoremap r? r?gv

"""""""""""""""""""""""""
" IdeaVim support       "
"""""""""""""""""""""""""
set nohlsearch                    " no highlight search results
set number                        " line numbers
set history=10000                 " keep x lines of command line history
set scrolloff=5                   " keep some lines before and after the cursor visible
set visualbell                    " no beep
set smartcase                     " no ignore case when pattern is uppercase
set incsearch                     " show search results while typing
set wrapscan                      " searches wrap around the end of the file

set ideajoin

xnoremap \= <Action>(ReformatCode)

noremap X 0V
xnoremap X <nop>

" Match mode
set argtextobj
nmap maa vaa
xmap maa vaa

" Goto mode
nmap gr <Action>(FindUsages)
nmap gi <Action>(GotoImplementation)
nmap gd <Action>(GotoDeclaration)
nmap gT <Action>(GotoTest)
nmap gy <Action>(GotoTypeDeclaration)

" Shell pipe
nnoremap <Bar> !
xnoremap <Bar> !

" KJump (https://plugins.jetbrains.com/plugin/10149-kjump)
nmap gw <Action>(KJumpAction.Word0)
xmap gw <Action>(KJumpAction.Word0)

" String manipulation (https://plugins.jetbrains.com/plugin/2162-string-manipulation)
xmap & <Action>(StringManipulation.AlignSelections)

" Selection manipulation
noremap , <Esc><Esc>

xmap <A-s> <Action>(EditorAddCaretPerSelectedLine)
nmap <A-o> <Action>(EditorSelectWord)
xmap <A-o> <Action>(EditorSelectWord)
nmap <A-Up> <Action>(EditorSelectWord)
xmap <A-Up> <Action>(EditorSelectWord)
nmap <A-i> <Action>(EditorUnSelectWord)
xmap <A-i> <Action>(EditorUnSelectWord)
nmap <A-Down> <Action>(EditorUnSelectWord)
xmap <A-Down> <Action>(EditorUnSelectWord)
nmap <C-c> <Action>(CommentByLineComment)k
xmap <C-c> <Action>(CommentByLineComment)k
nmap C <Action>(EditorCloneCaretBelow)
xmap C <Action>(EditorCloneCaretAbove)

nnoremap * v"ay:<C-u>let @/='<C-r>a'<CR>
xnoremap * "ay:<C-u>let @/='<C-r>a'<CR>

" View mode
nmap zc <Action>(EditorScrollToCenter)
nmap zj <Action>(EditorScrollDownAndMove)
nmap zk <Action>(EditorScrollUpAndMove)

" Unimpaired
nmap ]p <Action>(EditorForwardParagraph)
xmap ]p <Action>(EditorForwardParagraphWithSelection)
nmap [p <Action>(EditorBackwardParagraph)
xmap [p <Action>(EditorBackwardParagraphWithSelection)

xmap ]f <Action>(MethodDown)
nmap ]f <Action>(MethodDown)
xmap [f <Action>(MethodUp)
nmap [f <Action>(MethodUp)
xmap ]d <Action>(GotoNextError)
nmap ]d <Action>(GotoNextError)
xmap [d <Action>(GotoPreviousError)
nmap [d <Action>(GotoPreviousError)
xmap ]g <Action>(VcsShowNextChangeMarker)
nmap ]g <Action>(VcsShowNextChangeMarker)
xmap [g <Action>(VcsShowPrevChangeMarker)
nmap [g <Action>(VcsShowPrevChangeMarker)

" Space mode
nmap <Space>f <Action>(GotoFile)
xmap <Space>f <Action>(GotoFile)
nmap <Space>F <Action>(FindInPath)
xmap <Space>F <Action>(FindInPath)
nmap <Space>b <Action>(RecentFiles)
xmap <Space>b <Action>(RecentFiles)
nmap <Space>g <Action>(RecentChangedFiles)
xmap <Space>g <Action>(RecentChangedFiles)

nmap <Space>G <Action>(Debug)
xmap <Space>G <Action>(Debug)

nmap <Space>k <Action>(QuickJavaDoc)
xmap <Space>k <Action>(QuickJavaDoc)

nmap <Space>s <Action>(FileStructurePopup)
xmap <Space>s <Action>(FileStructurePopup)
nmap <Space>S <Action>(GotoSymbol)
xmap <Space>S <Action>(GotoSymbol)

nmap <Space>d <Action>(ActivateProblemsViewToolWindow)
xmap <Space>d <Action>(ActivateProblemsViewToolWindow)
nmap <Space>D <Action>(ActivateProblemsViewToolWindow)
xmap <Space>D <Action>(ActivateProblemsViewToolWindow)

nmap <Space>c <Action>(CommentByLineComment)
xmap <Space>c <Action>(CommentByLineComment)
nmap <Space>C <Action>(CommentByBlockComment)
xmap <Space>C <Action>(CommentByBlockComment)

nmap <Space>y <Action>(EditorCopy)
xmap <Space>y <Action>(EditorCopy)
nmap <Space>R <Action>(EditorPaste)
xmap <Space>R <Action>(EditorPaste)

nmap <Space>r <Action>(RenameElement)
xmap <Space>r <Action>(RenameElement)

nmap <Space>a <Action>(ShowIntentionActions)
xmap <Space>a <Action>(ShowIntentionActions)

nmap <Space>j <Action>(RecentLocations)
xmap <Space>j <Action>(RecentLocations)

nmap <Space>/ <Action>(FindInPath)
xmap <Space>/ <Action>(FindInPath)
nmap <Space>? <Action>(GotoAction)
xmap <Space>? <Action>(GotoAction)

" Window mode
nmap <Space>ww <Action>(NextSplitter)
xmap <Space>ww <Action>(NextSplitter)
nmap <Space>wv <Action>(SplitVertically)
xmap <Space>wv <Action>(SplitVertically)
nmap <Space>ws <Action>(SplitHorizontally)
xmap <Space>ws <Action>(SplitHorizontally)
nmap <Space>wt <Action>(ChangeSplitOrientation)
xmap <Space>wt <Action>(ChangeSplitOrientation)
nmap <Space>wq <Action>(CloseEditor)
xmap <Space>wq <Action>(CloseEditor)

nmap <C-w>w <Action>(NextSplitter)
xmap <C-w>w <Action>(NextSplitter)
nmap <C-w>v <Action>(SplitVertically)
xmap <C-w>v <Action>(SplitVertically)
nmap <C-w>s <Action>(SplitHorizontally)
xmap <C-w>s <Action>(SplitHorizontally)
nmap <C-w>t <Action>(ChangeSplitOrientation)
xmap <C-w>t <Action>(ChangeSplitOrientation)
nmap <C-w>q <Action>(CloseEditor)
xmap <C-w>q <Action>(CloseEditor)

" Tab Shifter (https://plugins.jetbrains.com/plugin/7475-tab-shifter)
nmap <Space>wk <Action>(TabShiftActions.MoveFocusUp)
xmap <Space>wk <Action>(TabShiftActions.MoveFocusUp)
nmap <Space>wh <Action>(TabShiftActions.MoveFocusLeft)
xmap <Space>wh <Action>(TabShiftActions.MoveFocusLeft)
nmap <Space>wj <Action>(TabShiftActions.MoveFocusDown)
xmap <Space>wj <Action>(TabShiftActions.MoveFocusDown)
nmap <Space>wl <Action>(TabShiftActions.MoveFocusRight)
xmap <Space>wl <Action>(TabShiftActions.MoveFocusRight)

