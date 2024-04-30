return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = true,
    ft = "norg",
    cmd = "Neorg",
    keys = {
      ["<leader>n"] = {
        "n",
        desc = "Neorg",
        name = "Notes",
      },
      {
        "<leader>nn",
        "core.dirman.new.note",
        mode = "n",
        desc = "New Neorg note",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "vhyrro/luarocks.nvim", priority = 1000, opts = {} },
      { "nvim-neorg/lua-utils.nvim", priority = 1000 },
      { "pysan3/pathlib.nvim", priority = 1000 },
    },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              index = "~/Documents/notes",
            },
            default_workspace = "index",
          },
        },
      },
    },
    config = function(_, opts)
      require("neorg").setup(opts)
    end,
  },
}
