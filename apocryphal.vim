" Select from cursor till end of line
map L vglv
map H vghv

" Select whole words excluding surrounding space using w/b
" e/alt-e are used for select until next/previous end/start of word
nnoremap w eviw
xnoremap w veviw
nnoremap W EviW
xnoremap W vEviW
nnoremap b bviwo
xnoremap b vbviwo
nnoremap B BviWo
xnoremap B vBviWo
noremap <A-e> <Esc>mabmbviwveviwovhmc`bhmblvh]`o
noremap <A-E> <Esc>maBmbviWovEviWvhmc`bhmblvh]`o

" More intuitive whole line selection using J/K
noremap V V
map J Vv
xmap vJ Zjv
map K Vv
xmap vK Zkv

noremap <A-j> = J

" Close current buffer
noremap <Space>q <Esc>:bd<CR>
" More intuitive quick info
noremap <space>i <Esc>:vsc Edit.QuickInfo<CR>
