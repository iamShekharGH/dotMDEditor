" The way this is structured is I have, per feature, created a seperate file and
" ill initialise it here, so in case there is a bug or the feature can be
" written in a better way one can only work on that file and it wud work. Or
" atleast thats the idea now.

" Set g:automaticOrNot = 
" 0 for No and 
" 1 for Yes
let g:automaticOrNot = 0

augroup dot_md_only
	autocmd!
    autocmd Filetype markdown :call MarkDownSpecific()
augroup END

function! MarkDownSpecific()
        call AutomaticOrNot(g:automaticOrNot)
endfunction

" Yet to fix this
function! DisableMDPlugin()
    call NORunAnyway()

"    normal! wq 
"    let l:filename = expand("%")
"    !vim l:filename
endfunction

function! AutomaticOrNot(yesNo)
    if a:yesNo ==# 0
        call NoAutomatic()
    else
        call YesAutomatic()
    endif
endfunction

function! NoAutomatic()
    nnoremap <localleader>o :call CheckKindOfList()<cr>
    nnoremap <localleader>O :call CheckKindOfList()<cr>
    call RunAnyway()
endfunction

function! YesAutomatic()
    inoremap <cr> <esc>:call CheckIfList()<cr>
    call RunAnyway()
endfunction

function! RunAnyway()
    vnoremap <localleader>I :call ItalicizeSelection()<cr>
    vnoremap <localleader>B :call BoldSelection()<cr>
    vnoremap <localleader>L :call LinkInsertSelection()<cr>
    nnoremap <localleader>b :call BlockquoteThisLine()<cr>
    nnoremap H1 :call Heading1Selection()<cr>
    nnoremap H2 :call Heading2Selection()<cr>
    nnoremap H3 :call Heading3Selection()<cr>
    nnoremap H4 :call Heading4Selection()<cr>
    inoremap <localleader>i <esc>:call ImageInsert()<cr>
    "For Later
    "nnoremap <localleader>i :call WordWiseItalicize()<cr>
    "nnoremap <localleader>b :call WordWiseBold()<cr>
endfunction

function! NORunAnyway()

    unmap <localleader>o 
    unmap <localleader>O 

    unmap <cr>

    unmap <localleader>I 
    unmap <localleader>B 
    unmap <localleader>L 
    unmap <localleader>b 
    unmap H1 
    unmap H2 
    unmap H3 
    unmap H4 
    unmap <localleader>i  
endfunction

function! CheckIfList()
    normal! ^
    let l:getFirstChar = getline(".")[getcurpos()[2]-1]
    if (l:getFirstChar ==# "*" ) || (l:getFirstChar ==# "-") || ( l:getFirstChar ==# "~") 
        call CheckKindOfList()
        startinsert

   elseif  l:getFirstChar =~# "^[0-9]*$"
        call CheckKindOfList()
        startinsert
    else
        normal! o
        startinsert
    endif

endfunction










