" Helper functions 

function! GetTextFrom(startPos,endPos)
    if a:startPos !=# 0
        let l:stemp = a:startPos-1
    else
        let l:stemp = 0
    endif

    if a:endPos !=# 0
        let l:etemp = a:endPos - 1
    else
        let l:etemp = 0
    endif

    let l:text = getline(".")[l:stemp:l:etemp]
    return l:text
endfunction

function! GetCharUnderCur()
    return getline(".")[getcurpos()[2]-1]
endfunction








