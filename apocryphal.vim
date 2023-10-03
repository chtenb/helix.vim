" Select from cursor till end of line
map L vglv
map H vghv

" Select words excluding surrounding space
nnoremap w eviw
xnoremap w veviw
nnoremap W EviW
xnoremap W vEviW
nnoremap <A-w> bviwo
xnoremap <A-w> vbviwo
nnoremap <A-W> BviWo
xnoremap <A-W> vBviWo

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
