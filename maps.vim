" Normal Keymaps
"nmap <Leader>n :NERDTreeFind<CR>
nmap <Leader>n  :Fern . -drawer -reveal=%<CR>
                \<Plug>(fern-action-hidden:set)<CR>
nmap <Leader>w :w<CR>
nmap <Leader>W :wq<CR>
nmap <Leader>q :q<CR>
nmap <Leader>Q :q!<CR>
nmap <Leader>d :t.<CR>
nmap <Leader>pi :PlugInstall<CR>
nmap <Leader>pc :PlugClean<CR>
nmap <Leader>g :G 
nmap ( <Plug>(GitGutterPrevHunk)
nmap ) <Plug>(GitGutterNextHunk)
nmap <Leader>hp <Plug>(GitGutterPreviewHunk)
nmap <silent>gc :noh<CR>
nmap <Leader>gi :diffget //3<CR>
nmap <Leader>gu :diffget //2<CR>
nmap <Leader>gB :G branch
nmap <Leader>gb :G blame<CR>
nmap <Leader>gh :G checkout 
nmap <Leader>gl :GlLog<CR>
nmap <Leader>gc :G commit<CR>
nmap <Leader>gf :G fetch<CR>
nmap <Leader>gm :G merge
nmap <Leader>gP :G push<CR>
nmap <Leader>gp :G pull<CR>
nmap <Leader>ff :Files<CR>
nmap <Leader>R :SearchAndReplace
nmap <Leader>fg :GFiles<CR>
nmap <Leader>fb :Buffers<CR>
nmap <Leader>fc :Commits<CR>
nmap <Leader>fa :Ag<CR>
nmap <Leader>fr :Rg<CR>
nmap <Leader>bd :bd<CR>
nmap <Leader>bn :bn<CR>
nmap <Leader>bp :bp<CR>
nmap <Leader>s /
nmap <Leader>r :%s///gc<Left><Left><Left>
nmap <silent><Leader>vv :Grepper -cword -noprompt<CR>
nmap <Leader>vr
    \ :let @s = '\<'.expand('<cword>').'\>'<CR>
    \ :Grepper -cword -noprompt<CR>
    \ :cfdo %s/<C-r>s// \| update
    \ <Left><Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
nmap <silent><Leader>i gg=G
nmap <Leader>m :! mkdir 
nmap <Leader>t :! touch 
nmap T :! 

" Visual Keymaps
vmap <silent><c-c> "+y
vmap <silent><c-x> "+x
vmap <Leader>d ::t'><CR>
vmap <Leader>i =
vmap <Leader>sr S"
vmap <Leader>ss S'
vmap <Leader>sp S)
vmap <Leader>sb S}
vmap <Leader>sc S]

" command! -nargs=* xyz :something <f-args><CR> "How to define commands with
"arguments

