function! BlockquoteThisLine()
    normal! 0i> 
    normal! j
endfunction

function! LinkInsertSelection()
    normal! `<i[
    normal! `>a]()
    startinsert
endfunction

"so youve gotta put altName,Image then use the command
function! ImageInsert()
    normal! ^
    let l:startTitle = getcurpos()[2]
    normal! vt,v
    let l:endTitle = getcurpos()[2]
    let l:title = GetTextFrom(l:startTitle,l:endTitle)
    normal! 2l
    let l:startImg = getcurpos()[2]
    normal! $
    let l:endImg = getcurpos()[2]
    let l:image = GetTextFrom(l:startImg,l:endImg)
    normal! dd
    call append(line(".")-1,"![".l:title."](".l:image.")")
endfunction

function! Heading1Selection()
    normal 0i# 
endfunction

function! Heading2Selection()
    normal 0i## 
endfunction

function! Heading3Selection()
    normal 0i### 
endfunction

function! Heading4Selection()
    normal 0i#### 
endfunction

function! ItalicizeSelection()
    normal! `<i*
    normal! `>a*
endfunction

function! BoldSelection()
    normal! `<i**
    normal! `>a**
endfunction

