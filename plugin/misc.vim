" gitgutter:
let g:gitgutter_eager = 0

" airline:
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.space = "\ua0"
let g:airline_exclude_preview = 1
let g:ctrlspace_use_tabline = 1

" Rainbow Parantheses:
let g:rbpt_colorpairs = [
    \ ['brown',       '#bf615f'],
    \ ['Darkblue',    '#bf5fa5'],
    \ ['darkgray',    '#915fbf'],
    \ ['darkgreen',   '#5f76bf'],
    \ ['darkcyan',    '#5fbebf'],
    \ ['darkred',     '#5fbf78'],
    \ ['darkmagenta', '#8ebf5f'],
    \ ['brown',       '#bfa75f'],
    \ ['gray',        '#bf615f'],
    \ ['black',       '#bf5fa5'],
    \ ['darkmagenta', '#915fbf'],
    \ ['Darkblue',    '#5f76bf'],
    \ ['darkgreen',   '#5fbebf'],
    \ ['darkcyan',    '#5fbf78'],
    \ ['darkred',     '#8ebf5f'],
    \ ['red',         '#bfa75f'],
\ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Ctrlspace
hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold gui=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE gui=NONE
hi CtrlSpaceSearch   ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold    gui=bold
hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE    gui=NONE

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
