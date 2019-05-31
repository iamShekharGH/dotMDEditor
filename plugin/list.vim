
function! CheckKindOfList()
"    echom "go and set 0 or 1 base on ordered on unorderd"
    if WhatTypeOfList()
        call  OrderedListFunction()
    else
        call  UnorderedListFunction()
   endif
endfunction

function! WhatTypeOfList()
    normal! ^
    let tempVar =  getline(".")[getcurpos()[2]-1]
    for i in range(1,9)
        if tempVar ==# i
            return 1
        endif
    endfor
    return 0
endfunction

function! OrderedListFunction()

    "/ regex for nums ^[0-9]*$ OR \d+

    let l:nextNumber = 0
    let l:nextNumber = NextNumberBullet()
    call PasteTextUnderCursor(l:nextNumber)

endfunction

function! GetCharUnderCursor()
    let l:char = getline(".")[col('.')-1]
    return l:char
endfunction

function! UnorderedListFunction()
    normal! ^
    call PasteTextUnderCursor(getline(".")[getcurpos()[2]-1]."  ")
endfunction

function! PasteTextUnderCursor(text)
    echom a:text
    call append(line("."),a:text)
    normal! ^v0y
    normal j0i
    normal! P^xA
endfunction

function! NextNumberBullet()
        normal! ^h
        if getcurpos()[2] ==# 1
            let l:startpos = getcurpos()[2]
            let l:startpos = l:startpos - 1
            normal! ^vt v
            normal! h
            let l:endpos = getcurpos()[2] - 1
            let l:fc = getline(".")[l:startpos:l:endpos]
            let l:seperator = getline(".")[l:endpos+1:l:endpos+1]
            let l:finalText = (l:fc + 1).seperator."  "
            return l:finalText
        else
            let l:startpos = getcurpos()[2]
            " Here i first went with . instread of space but what if no .
            normal! ^vt v
            normal! h
            let l:endpos = getcurpos()[2]
            "echom "s: ".l:startpos." e: ".l:endpos
        
            let l:fc = getline(".")[l:startpos:l:endpos]
            let l:seperator = getline(".")[l:endpos:l:endpos]
"            echom "l:startpos :".l:startpos." l:endpos :".l:endpos." fc :".l:fc." \nSeperator :".seperator
            let l:finalText = (l:fc + 1).l:seperator."  "
            return l:finalText
        endif
endfunction

 
