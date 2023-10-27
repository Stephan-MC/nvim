return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
        mappings = {
          ["<Space>"] = "open",
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
