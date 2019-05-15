""""""""""""""""""""""""""""""
" => vim-plug 
""""""""""""""""""""""""""""""

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'joshdick/onedark.vim' " Theme
Plug 'sheerun/vim-polyglot' " Syntax highlight
Plug 'vim-airline/vim-airline' " Status bar
Plug 'w0rp/ale' " Asynchronous Lint
" Plug 'scrooloose/nerdtree' " Tree explorer
" Plug 'Xuyuanp/nerdtree-git-plugin' " Tree explorer with git status
Plug 'ryanoasis/vim-devicons' " Tree explorer icon
" Plug 'mhinz/vim-startify' "start screen for Vim
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " Tree explorer icon highlight
Plug 'enricobacis/vim-airline-clock'
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary' " gc comment
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat' " enable repeating supported plugin maps with .
Plug 'airblade/vim-gitgutter' "git diff
Plug 'tpope/vim-fugitive' " Status bar git branch name
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']}
Plug 'vim-scripts/TaskList.vim' "task list
Plug 'vim-scripts/CmdlineComplete' "Ctrl-P or Ctrl-N to complete cmd
Plug 'luochen1990/rainbow' "Rainbow Parentheses
Plug 'majutsushi/tagbar' "tag outline
Plug 'tmhedberg/matchit' "extended % matching for html, latex, and many other languages
Plug 'kshenoy/vim-signature' " display and navigate marks
Plug 'vim-scripts/YankRing.vim' "Maintains a history of previous yanks, changes and deletes
Plug 'ctrlpvim/ctrlp.vim'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'vim-scripts/bufexplorer.zip'
Plug 'dyng/ctrlsf.vim'                               "search and view tool
Plug 'plasticboy/vim-markdown'
" if you have nodejs and yarn
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
" list ends here. plugins become visible to vim after this call.
call plug#end()


""""""""""""""""""""""""""""""
" => onedark
""""""""""""""""""""""""""""""

if (empty($TMUX))
    let g:onedark_terminal_italics = 1
endif

let g:onedark_termcolors=16
let g:airline_theme='onedark'
syntax on
colorscheme onedark
" highlight Comment cterm=italic gui=italic
" highlight Conditional cterm=italic gui=italic
" highlight Identifier cterm=italic gui=italic
" highlight Repeat cterm=italic gui=italic
" highlight Statement cterm=italic gui=italic
" highlight Type cterm=italic gui=italic
" highlight htmlItalic cterm=italic gui=italic
" highlight markdownItalic cterm=italic gui=italic

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:NERDTreeShowHidden=1
" let g:NERDTreeWinPos = "right"
" let g:NERDTreeWinSize=35
" map <leader>nn :NERDTreeToggle<cr>
" map <leader>nb :NERDTreeFromBookmark<Space>
" map <leader>nf :NERDTreeFind<cr>
""""""""""""""""""""""""""""""
" => vim-devicons
""""""""""""""""""""""""""""""
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_ctrlp = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
let g:DevIconsEnableFolderExtensionPatternMatching = 1

"""""""""""""""""""""""""""""
" => nerdtree-git-plugin
"""""""""""""""""""""""""""""
" let g:NERDTreeShowGitStatus = 1
" let g:NERDTreeUpdateOnWrite = 1
" let g:NERDTreeGitStatusNodeColorization = 1  "enables colorization
" let g:NERDTreeGitStatusWithFlags = 1  "enables flags, (may be default), required for colorization
" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "✹",
"     \ "Staged"    : "✚",
"     \ "Untracked" : "✭",
"     \ "Renamed"   : "➜",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "✖",
"     \ "Dirty"     : "✗",
"     \ "Clean"     : "✔︎",
"     \ 'Ignored'   : '☒',
"     \ "Unknown"   : "?"
"     \ }
""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=0
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>

""""""""""""""""""""""""""""""
" => emmet-vim
""""""""""""""""""""""""""""""

" let g:user_emmet_leader_key='<C-z>'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ack searching and cope displaying
"    requires ack.vim - it's much better than vimgrep/grep
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Use the the_silver_searcher if possible (much faster than Ack)
"if executable('ag')
"  let g:ackprg = 'ag --vimgrep --smart-case'
"endif

"" When you press gv you Ack after the selected text
"vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

"" Open Ack and put the cursor in the right position
"map <leader>g :Ack 

"" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>

"" Do :help cope if you are unsure what cope is. It's super useful!
""
"" When you search with Ack, display your results in cope by doing:
""   <leader>cc
""
"" To go to the next search result do:
""   <leader>n
""
"" To go to the previous search results do:
""   <leader>p
""
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>


""""""""""""""""""""""""""""""
" => coc
""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K for show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Highlight symbol under cursor on CursorHold
" if (empty($TMUX))
"     hi default CocHighlightText  guibg=#FFEFAA ctermbg=167 guifg=Black ctermfg=Black
"     hi default link CocHighlightRead  CocHighlightText
"     hi default link CocHighlightWrite  CocHighlightText
"     autocmd CursorHold * silent call CocActionAsync('highlight')
" endif

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
vmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use `:Format` for format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` for fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add diagnostic info for https://github.com/itchyny/lightline.vim
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ },
      \ }

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>A  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>E  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>C  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>O  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>S  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>J  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>K  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>P  :<C-u>CocListResume<CR>

""""""""""""""""""""""""""""""
" => airline
""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1

" show errors or warnings in my statusline
let g:airline#extensions#ale#enabled = 1

" if you want to disable auto detect, comment out those two lines
"let g:airline#extensions#disable_rtp_load = 1
"let g:airline_extensions = ['branch', 'hunks', 'coc']

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

""""""""""""""""""""""""""""""
" => ale
""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ale_sign_error = '✗'

" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Disable completion where available.
let g:ale_completion_enabled = 0

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0

""""""""""""""""""""""""""""""
" => ctrlp
""""""""""""""""""""""""""""""

"let g:ctrlp_working_path_mode = 0

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git'

""""""""""""""""""""""""""""""
" => markdown-preview 
""""""""""""""""""""""""""""""

let g:mkdp_auto_start = 1

""""""""""""""""""""""""""""""
" => vim-markdown 
""""""""""""""""""""""""""""""
let vim_markdown_folding_disabled = 1

""""""""""""""""""""""""""""""
" => indentLine
""""""""""""""""""""""""""""""
let g:indentLine_enabled=1
let g:indentLine_char='¦'
let g:indent_guides_start_level=1

""""""""""""""""""""""""""""""
" => vim-gitgutter
""""""""""""""""""""""""""""""
" let g:gitgutter_highlight_lines = 1

""""""""""""""""""""""""""""""
" => vim-prettier
""""""""""""""""""""""""""""""
nmap <Leader>pr <Plug>(Prettier)
let g:prettier#config#tab_width = 4

""""""""""""""""""""""""""""""
"=> Rainbow
""""""""""""""""""""""""""""""
let g:rainbow_active = 1
let g:rainbow_conf = {
    \ 'separately': {
    \    'nerdtree': 0,
    \  }
    \}

""""""""""""""""""""""""""""""
"=> tagbar
""""""""""""""""""""""""""""""
nmap <leader>tt :TagbarToggle<CR>
let g:tagbar_autofocus = 1

""""""""""""""""""""""""""""""
"=> ctrlsf
""""""""""""""""""""""""""""""
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

""""""""""""""""""""""""""""""
"=> YankRing
""""""""""""""""""""""""""""""
nnoremap <silent> <leader>ys :YRShow<CR>
nnoremap <silent> <leader>yc :YRClear<CR>
let g:yankring_replace_n_pkey = ''
