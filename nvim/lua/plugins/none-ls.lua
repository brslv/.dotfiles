return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    local sources = {
      null_ls.builtins.formatting.prettierd.with({
        filetypes = {
          "javascript",
          "typescript",
          "javascriptreact",
          "typescriptreact",
          "css",
          "scss",
          "json",
          "yaml",
          "markdown",
          "graphql",
          "md",
          "txt",
        },
      }),
      null_ls.builtins.diagnostics.eslint_d.with({}),
      null_ls.builtins.formatting.stylua.with({
        filetypes = {
          "lua",
        },
        args = { "--indent-width", "2", "--indent-type", "Spaces", "-" },
      }),
      null_ls.builtins.diagnostics.stylelint.with({
        filetypes = {
          "css",
          "scss",
        },
      }),
    }

    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
    require("null-ls").setup({
      sources = sources,
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({
                bufnr = bufnr,
                filter = function(iclient)
                  return iclient.name == "null-ls"
                end,
              })
            end,
          })
        end
      end,
    })
  end,
}
