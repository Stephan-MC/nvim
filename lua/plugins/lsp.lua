return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   opts = {
  --     servers = {
  --       tsserver = {},
  --     },
  --     setup = {},
  --   },
  -- },

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

      -- lspconfig.phpactor.setup({
      --   init_options = {
      --     -- ["language_server_phpstan.enabled"] = true,
      --     -- ["language_server_phpstan.bin"] = vim.fn.stdpath("data") .. "/mason/bin/phpstan",
      --     ["language_server_php_cs_fixer.enabled"] = true,
      --     ["language_server_php_cs_fixer.show_diagnostics"] = false,
      --     ["language_server_php_cs_fixer.bin"] = vim.fn.stdpath("data") .. "/mason/bin/php-cs-fixer",
      --     ["language_server_completion.trim_leading_dollar"] = true,
      --   },
      -- })

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
        },
      })
    end,
  },
}
