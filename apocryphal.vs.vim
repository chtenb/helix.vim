" Select from cursor till end of line
noremap L <Esc>v$h
noremap H <Esc>v0

" Open solution explorer
noremap <space>e <Esc>:vsc View.SolutionExplorer<CR>
" Symbol picker; s is easier to type than S and Visual Studio does not have a file-local symbol picker
noremap <space>s <Esc>:vsc Edit.GoToSymbol<CR>
" Close current tab/file
noremap <space>q <Esc>:q<CR>

" TODO: these alt keys do not work, though it seems they should:
" https://github.com/VsVim/VsVim/issues/806
nnoremap <A-w> bviwo
xnoremap <A-w> vbviwo
nnoremap <A-W> BviWo
xnoremap <A-W> vBviWo

" TODO: add special cases for VsVim multiple selections
" https://github.com/VsVim/VsVim/blob/master/Documentation/Multiple%20Selections.md

" Surround mode
noremap msb :vsc Edit.SurroundWith<CR>
