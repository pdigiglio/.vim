augroup cursor_follows_vim
    autocmd!
    autocmd WinEnter * set   cursorline
    autocmd WinLeave * set nocursorline
augroup END

augroup cursor_follows_focus
    autocmd!
    autocmd FocusGained * set   cursorline
    autocmd FocusLost   * set nocursorline
augroup END
