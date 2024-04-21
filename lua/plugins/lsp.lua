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
    "williamboman/mason.nvim",
    opts = {
      -- List of << Must Install >> servers
      ensure_installed = {
        "emmet-language-server",
        "angular-language-server",
        "tailwindcss-language-server",
        "vue-language-server",
        "blade-formatter",

        "phpactor",
      },
    },
  },
}
