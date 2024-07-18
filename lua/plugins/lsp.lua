return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      -- List of << Must Install >> servers
      ensure_installed = {
        "emmet_language_server",
      },
    },
    dependencies = {
      { "williamboman/mason.nvim", opts = { ensure_installed = { "blade-formatter" } } },
      "neovim/nvim-lspconfig",
      "folke/neoconf.nvim",
    },
    config = function(_, opts)
      local lspconfig = require("lspconfig")

      lspconfig.emmet_language_server.setup({
        filetypes = {
          "css",
          "eruby",
          "html",
          "javascript",
          "javascriptreact",
          "less",
          "sass",
          "scss",
          "pug",
          "typescriptreact",
          "blade",
          "php",
          "markdown",
          "blade",
        },
      })
    end,
  },
}
