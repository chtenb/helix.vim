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
set idearefactormode=keep

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

