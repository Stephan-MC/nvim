return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = true,
    ft = "norg",
    cmd = "Neoorg",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/Documents/neorg-notes",
              },
            },
          },
        },
      })
    end,
  },
}
