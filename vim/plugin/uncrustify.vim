nnoremap <S-f> :call UncrustifyAuto()<CR>
"uncrustify config file
let g:uncrustify_cfg_file_path = '~/.uncrustify.cfg'

"language setting
let g:uncrustify_lang = ""
autocmd FileType c let g:uncrustify_lang = "c"
autocmd FileType cpp let g:uncrustify_lang = "cpp"

function! Preserve(command)
	let search = @/
	let cursor_position = getpos('.')
	normal! H
	let window_position = getpos('.')
	call setpos('.', cursor_position)
	execute a:command
	let @/ = search
	call setpos('.', window_position)
	normal! zt
	call setpos('.', cursor_position)
endfunction

function! Uncrustify(language)
	call Preserve(':silent %!uncrustify'.' -q '.' -l '.a:language.' -c '.shellescape(fnamemodify(g:uncrustify_cfg_file_path, ':p')))
endfunction

function! UncrustifyAuto()
	if g:uncrustify_lang != ""
		call Uncrustify(g:uncrustify_lang)
	endif
endfunction
