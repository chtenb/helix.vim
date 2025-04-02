" Select from cursor till end of line
map L <A-:><A-;>vglv
xmap vL Zglv
map H <A-;><A-:>vghv
xmap vH Zghv
" Select till end of file
noremap ge <Esc>G$
xnoremap Zge G$
xmap vge Zgev
noremap G <Esc>G
xnoremap ZG G
xmap vG ZGv

" Select whole words excluding surrounding space using w/b
" e/alt-e are used for select until next/previous end/start of word
nnoremap w eviw
xnoremap w <Esc>eviw
nnoremap W EviW
xnoremap W <Esc>EviW
nnoremap b bviwo
xnoremap b <Esc>bviwo
nnoremap B BviWo
xnoremap B <Esc>BviWo
noremap <A-e> <Esc>mabmbviwveviwovhmc`bhmblvh]`o
noremap <A-E> <Esc>maBmbviWovEviWvhmc`bhmblvh]`o

xnoremap ZE E
xmap vW ZEv

" More intuitive whole line selection using J/K
map J ZVv
xmap vJ Zjv
map K ZVv
xmap vK Zkv

noremap <A-j> J

" :reflow
xnoremap <Space><Bslash> gq

" Close current buffer
noremap <Space>q <Esc>:bd<CR>
" More intuitive quick info
noremap <space>i <Esc>:vsc Edit.QuickInfo<CR>

" Easily select inner line
nnoremap _ ^v$h
vnoremap _ ^v$h
