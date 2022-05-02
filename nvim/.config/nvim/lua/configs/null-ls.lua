local null_ls = require("null-ls")

local sources = {
  null_ls.builtins.formatting.prettier,
  null_ls.builtins.diagnostics.eslint
}

local on_attach = function(client)
  -- if client.server_capabilities.document_formatting then
    -- vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.format()")
    vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
  -- end
end

null_ls.setup({
    sources = sources,
    on_attach = on_attach
})
