local lsp = require('lspconfig')
local cmp = require('cmp')
cmp.setup({
    mapping = {
        ['<Tab>'] = cmp.mapping.confirm({select = true})
    },
    sources = {{name = 'nvim_lsp'}}
})

lsp.clangd.setup{
    capabilities = require('cmp_nvim_lsp').default_capabilities(),
    filetypes = {"c", "cpp"}
}
