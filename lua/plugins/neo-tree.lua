return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        mappings = {
          ["o"] = "open",
        },
      },
      filesystem = {
        window = {
          mappings = {
            ["h"] = "toggle_hidden",
            ["H"] = nil,
          },
        },
      },
    },
  },
}
