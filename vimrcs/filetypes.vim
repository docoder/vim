""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""

au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent
au FileType javascript setl nowrap

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f // --- PH<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => TypeScript section
"""""""""""""""""""""""""""""""
" autocmd BufEnter *.tsx set filetype=typescript
au FileType typescript call TypeScriptFold()
au FileType typescript setl fen
au FileType typescript setl nocindent
au FileType typescript setl nowrap

au FileType typescript imap <c-t> $log();<esc>hi
au FileType typescript imap <c-a> alert();<esc>hi

au FileType typescript inoremap <buffer> $r return 
au FileType typescript inoremap <buffer> $f // --- PH<esc>FP2xi

au FileType typescript.tsx call TypeScriptFold()
au FileType typescript.tsx setl fen
au FileType typescript.tsx setl nocindent
au FileType typescript.tsx setl nowrap

au FileType typescript.tsx imap <c-t> $log();<esc>hi
au FileType typescript.tsx imap <c-a> alert();<esc>hi

au FileType typescript.tsx inoremap <buffer> $r return 
au FileType typescript.tsx inoremap <buffer> $f // --- PH<esc>FP2xi

function! TypeScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""

let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f # --- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""

if exists('$TMUX')
    if has('nvim')
        set termguicolors
    else
        set term=screen-256color
    endif
endif

