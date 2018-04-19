xnoremap <buffer> d  :DeleteLines<cr>
nnoremap <buffer> dd :DeleteLines<cr>
nnoremap <buffer> u  :UndoDelete<cr>

if !exists(':DeleteLines')
  let b:deletion_stack = []

  " Delete by a pattern (with undo placing them all on top):
  "
  "   :Delete ^command " Delete all entries that start with 'command'
  "   :Delete! ^command " Delete all entries that don't start with 'command'
  "
  command! -nargs=1 -bang Delete call s:Delete(<f-args>, '<bang>')
  function! s:Delete(pattern, bang)
    let l:saved_cursor = getpos('.')
    let l:deleted      = []

    let l:new_qflist = []
    for l:entry in getqflist()
      if (l:entry.text !~ a:pattern && a:bang ==? '') || (l:entry.text =~ a:pattern && a:bang ==? '!')
        call add(l:new_qflist, l:entry)
      else
        call add(l:deleted, l:entry)
      endif
    endfor

    call setqflist(l:new_qflist)
    if !empty(l:deleted)
      call insert(b:deletion_stack, [0, l:deleted], 0)
    endif

    call setpos('.', l:saved_cursor)
    echo
  endfunction

  command! -range -buffer DeleteLines call s:DeleteLines(<line1>, <line2>)
  function! s:DeleteLines(start, end)
    let l:saved_cursor = getpos('.')
    let l:start        = a:start - 1
    let l:end          = a:end - 1

    let l:qflist  = getqflist()
    let l:deleted = remove(l:qflist, l:start, l:end)
    call insert(b:deletion_stack, [l:start, l:deleted], 0)

    call setqflist(l:qflist)
    call setpos('.', l:saved_cursor)
    echo
  endfunction

  command! -buffer UndoDelete call s:UndoDelete()
  function! s:UndoDelete()
    if empty(b:deletion_stack)
      return
    endif

    let l:saved_cursor = getpos('.')
    let l:qflist       = getqflist()

    let [l:index, l:deleted] = remove(b:deletion_stack, 0)
    for l:line in l:deleted
      call insert(l:qflist, l:line, l:index)
      let l:index = l:index + 1
    endfor

    call setqflist(l:qflist)
    call setpos('.', l:saved_cursor)
    echo
  endfunction
end

