call plug#begin('~/.vim/plugged')
" Themes
"Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'

" IDE
"Plug 'preservim/nerdtree' " Tree of files for Vim
"Plug 'Xuyuanp/nerdtree-git-plugin'	"git icons in nerd tree
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'	" Highlight text with icons of programming languages
Plug 'lambdalisue/fern.vim' " Tree of files for Vim (better)
Plug 'lambdalisue/fern-renderer-devicons.vim'           " devicons for Fern
Plug 'ryanoasis/vim-devicons'	" Devicons for nerdtree
Plug 'preservim/nerdcommenter' " Easy way to comment
Plug 'christoomey/vim-tmux-navigator'	" Navigator between screens
Plug 'tpope/vim-fugitive' " full git integration 
Plug 'airblade/vim-gitgutter' " full git integration
Plug 'vim-airline/vim-airline' " bottom line with info
Plug 'vim-airline/vim-airline-themes'                   " Themes for airline
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " File searcher 
Plug 'junegunn/fzf.vim'                                 " File searcher
" You need to install The Silver Searcher (ag) too: apt-get install silversearcher-ag
" Or install Ripgrep (rg) too: curl -LO https://github.com/BurntSushi/ripgrep/releases/download/12.1.1/ripgrep_12.1.1_amd64.deb & sudo dpkg -i ripgrep_12.1.1_amd64.deb
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'haya14busa/is.vim' " search feature
Plug 'nelstrom/vim-visual-star-search' " search with *
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-surround'

" COC 
" Include Phpactor
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'} " Require ncm2 and this plugin
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"" LSP
"Plug 'williamboman/mason.nvim'
"Plug 'williamboman/mason-lspconfig.nvim'
"Plug 'neovim/nvim-lspconfig'
"Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' }

"" CMP
"Plug 'hrsh7th/nvim-cmp'
"Plug 'quangnguyen30192/cmp-nvim-ultisnips'
"Plug 'hrsh7th/cmp-nvim-lsp'
"Plug 'hrsh7th/cmp-cmdline'
"Plug 'hrsh7th/cmp-path'
"Plug 'hrsh7th/cmp-buffer'
"Plug 'AndrewRadev/tagalong.vim'

" Laravel, PHP vim
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'
Plug 'vim-vdebug/vdebug'

" JSX,TSX
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'       " Highlight for TSX files
Plug 'peitalin/vim-jsx-typescript'      " Highlight for TSX files   
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

" Python
Plug 'honza/vim-snippets' " pre-built snippets for bash, python, etc. it integrates with ultisnips.
call plug#end()
