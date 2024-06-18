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
