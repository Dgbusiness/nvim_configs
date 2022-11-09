let mapleader=" "

" Dark + Vscode
colorscheme codedark

" Fern icons
let g:fern#renderer = "devicons"

" NERDTree
"let NERDTreeQuitOnOpen=1
"" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

"" vim-nerdtree-syntax-highlight configurations
"let g:NERDTreeFileExtensionHighlightFullName = 1
"let g:NERDTreeExactMatchHighlightFullName = 1
"let g:NERDTreePatternMatchHighlightFullName = 1
"let g:NERDTreeHighlightFolders = 1 
"let g:NERDTreeHighlightFoldersFullName = 1 
"let g:NERDTreeShowHidden=1


"" nerdtree-git-plugin configurations
"let g:NERDTreeGitStatusWithFlags = 1
"let g:NERDTreeGitStatusUseNerdFonts = 1

" vim-gitgutter
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterDelete guifg=#ff2222 ctermfg=Red
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_linenrs = 1

" vim-airline
let g:airline#extensions#wordcount#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline_theme = 'ravenpower'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" fzf
let g:fzf_layout = {'window': {'width': 1, 'height': 0.8}}
let $FZF_DEFAULT_OPTS='--reverse'
let $FZF_DEFAULT_COMMAND="rg --files --follow --no-ignore-vcs --hidden -g '!design/' -g '!vendor/' -g '!dist/' -g '!pnpm-lock.yaml' -g '!.git' -g '!node_modules'"
command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   "rg -g '!design/' -g '!vendor/' -g '!dist/' -g '!pnpm-lock.yaml' -g '!.git' -g '!node_modules' --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1,
            \   fzf#vim#with_preview({'options': '--exact --delimiter : --nth 4..'}), <bang>0)

" COC 
command! -nargs=0 Prettier :CocCommand prettier.formatFile
command! -nargs=0 PhpFormat :CocCommand php-cs-fixer.fix

inoremap <silent><expr> <TAB>
            \ pumvisible() ? coc#_select_confirm() :
            \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()

function! s:check_back_space() abort
let col = col('.') - 1
let g:gitgutter_enabled = 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

let g:coc_global_extensions = [
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-tsserver',
            \ 'coc-eslint', 
            \ 'coc-prettier', 
            \ 'coc-json',
            \ 'coc-php-cs-fixer',
            \ 'coc-blade-formatter',
            \ '@yaegassy/coc-intelephense',
            \ 'coc-emmet',
            \ ]

" LSP Configuration
"so ~/.vim/settings/lsp.vim

" CMP
"so ~/.vim/settings/cmp.vim

" vim-styled-components
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" vim-grepper
let g:grepper = {}
let g:grepper.tools = ['rg'] 

" Highlighting for large files
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

" VDebug
let g:vdebug_keymap = {
            \    "run" : "<F5>",
            \    "run_to_cursor" : "<F9>",
            \    "step_over" : "<F2>",
            \    "step_into" : "<F3>",
            \    "step_out" : "<F4>",
            \    "close" : "<F6>",
            \    "detach" : "<F7>",
            \    "set_breakpoint" : "<silent><Leader>db",
            \    "get_context" : "<F11>",
            \    "eval_under_cursor" : "<F12>",
            \    "eval_visual" : "<Leader>e",
            \}
let g:vdebug_options = {}
let g:vdebug_options["port"] = 80

