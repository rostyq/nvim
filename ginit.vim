GuiPopupmenu 0
GuiTabline 0
if has('win32')
    Guifont Consolas:h11
else
    Guifont JetBrains\ Mono:h14
endif

nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
