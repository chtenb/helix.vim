
"""""""""""""""""""""""""
" Visual Studio support "
"""""""""""""""""""""""""

" workarounds for bugs and limitations of VsVim
set noincsearch
set nohlsearch
" We can't properly remap /
" https://github.com/VsVim/VsVim/issues/3068
" Instead, we map the enter key to a suboptimal binding (loses selection)
cnoremap <CR> <CR><Esc>v
xnoremap / /
xnoremap ? ?
xnoremap n <Esc>gn
xnoremap N <Esc>gN
nnoremap n gn
nnoremap N gN
xnoremap * <Esc>*Ngn
nnoremap * *Ngn

" gk/gj do not work in VsVim when wrap is enabled
" https://github.com/VsVim/VsVim/issues/2758
nnoremap j j
nnoremap k k
xnoremap j <Esc>j
xnoremap k <Esc>k
" TODO: check select mode case

" Workarounds for `> bugs
" https://github.com/VsVim/VsVim/issues/3072
" https://github.com/VsVim/VsVim/issues/3065
xnoremap a <Esc>`>ha
xnoremap <A-:> <Esc>`<v`>h
xnoremap p <Esc>`>hpgv
xnoremap R "_d""P`[v`]h
xnoremap ms( <Esc>`<i(<Esc>ma`>a)<Esc>mb`av`b
xnoremap ms) <Esc>`<i(<Esc>ma`>a)<Esc>mb`av`b
xnoremap ms[ <Esc>`<i[<Esc>ma`>a]<Esc>mb`av`b
xnoremap ms] <Esc>`<i[<Esc>ma`>a]<Esc>mb`av`b
xnoremap ms{ <Esc>`<i{<Esc>ma`>a}<Esc>mb`av`b
xnoremap ms} <Esc>`<i{<Esc>ma`>a}<Esc>mb`av`b
xnoremap ms< <Esc>`<i<<Esc>ma`>a><Esc>mb`av`b
xnoremap ms> <Esc>`<i<<Esc>ma`>a><Esc>mb`av`b
" These will only work when auto brace completion is off
" https://stackoverflow.com/questions/70759967/how-to-disable-automatic-double-quotation-marks-in-visual-studio-2022
xnoremap ms' <Esc>`<i'<Esc>ma`>a'<Esc>mb`av`b
xnoremap ms" <Esc>`<i"<Esc>ma`>a"<Esc>mb`av`b
xnoremap ms` <Esc>`<i`<Esc>ma`>a`<Esc>mb`av`b
xnoremap ms~ <Esc>`<i~<Esc>ma`>a~<Esc>mb`av`b
xnoremap ms/ <Esc>`<i/<Esc>ma`>a/<Esc>mb`av`b
xnoremap ms_ <Esc>`<i_<Esc>ma`>a_<Esc>mb`av`b
xnoremap ms- <Esc>`<i-<Esc>ma`>a-<Esc>mb`av`b
xnoremap ms* <Esc>`<i*<Esc>ma`>a*<Esc>mb`av`b
xnoremap ms: <Esc>`<i:<Esc>ma`>a:<Esc>mb`av`b
xnoremap ms= <Esc>`<i=<Esc>ma`>a=<Esc>mb`av`b
xnoremap ms<Bar> <Esc>`<i<Bar><Esc>ma`>a<Bar><Esc>mb`av`b


noremap <C-6> <Esc>:vsc Window.NextDocumentWindowNav<CR>
noremap <C-O> <Esc>:vsc View.NavigateBackward<CR>
noremap <C-I> <Esc>:vsc View.NavigateForward<CR>
noremap <A-O> :vsc Edit.ExpandSelection<CR>
noremap <A-I> :vsc Edit.ContractSelection<CR>
map = :vsc Edit.FormatSelection<CR>


" Goto mode
noremap gn :vsc Window.NextTab<CR>
noremap gp :vsc Window.PreviousTab<CR>
noremap gd :vsc Edit.GoToDefinition<CR>
noremap gr :vsc Edit.FindAllReferences<CR>

" Space mode
"TODO: yanking leaves a hanging visual mode for one motion
xnoremap <Space>y "*ygv
xnoremap <Space>Y "*ygv
noremap <space>k <Esc>:vsc Edit.QuickInfo<CR>
noremap <space>a <Esc>:vsc View.QuickActions<CR>
noremap <space>/ <Esc>:vsc Edit.FindInFiles<CR>
noremap <space>S <Esc>:vsc Edit.GoToSymbol<CR>
noremap <space>f <Esc>:vsc Edit.GoToFile<CR>
noremap <space>r <Esc>:vsc Refactor.Rename<CR>
noremap <space>D <Esc>:vsc View.ErrorList<CR>
" TODO: more IDE features/space mode

" Bracket mode
noremap ]f <Esc>:vsc Edit.NextMethod<CR>
noremap [f <Esc>:vsc Edit.PreviousMethod<CR>
noremap ]c <Esc>:vsc View.Comments<CR>
"noremap ]d <Esc>:vsc View.NextError<CR>
"noremap [d <Esc>:vsc View.PreviousError<CR>

" Match mode
" TODO: add all relevant and add to native helix.vim

