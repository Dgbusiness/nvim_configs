lua << EOF

-- Mason settings.
require("mason").setup({
ui = {
    icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()

local nvim_lsp = require('lspconfig')
local protocol = require('vim.lsp.protocol')


local on_attach = function(client, bufnr)
    local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    -- Mappings.
    local opts = { noremap = true, silent = true }

    buf_set_keymap('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
end

--Typescript
nvim_lsp.tsserver.setup {
    on_attach = on_attach,
    filetypes = { 
        "typescript",
        "typescriptreact", 
        "typescript.tsx", 
        "javascript", 
        "javascriptreact", 
        "javascript.jsx"
        }
    }
nvim_lsp.eslint.setup {
    on_attach = on_attach,
    filetypes = { 
        "typescript",
        "typescriptreact", 
        "typescript.tsx", 
        "javascript", 
        "javascriptreact", 
        "javascript.jsx"
        }
    }
nvim_lsp.graphql.setup {
    on_attach = on_attach,
    filetypes = { 
        "typescript",
        "typescriptreact", 
        "typescript.tsx", 
        "javascript", 
        "javascriptreact", 
        "javascript.jsx"
        }
    }
--Vim
nvim_lsp.vimls.setup {
    on_attach = on_attach,
    filetypes = { 
        "vim"
        }
    }
--PHP
nvim_lsp.intelephense.setup {
    on_attach = on_attach,
    filetypes = { 
        "php"
        }
    }

EOF

" LSPSaga
lua require('lspsaga').init_lsp_saga()

" Next diagnostic
nnoremap <silent> kj <Cmd>Lspsaga diagnostic_jump_next<CR>
" show hover doc
nnoremap <silent>K :Lspsaga hover_doc<CR>
" Signature help
inoremap <silent> <C-k> <Cmd>Lspsaga signature_help<CR>
" Async LSP Finder
nnoremap <silent> J <Cmd>Lspsaga lsp_finder<CR>
