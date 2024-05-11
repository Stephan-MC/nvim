return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = true,
    ft = { "norg", "org" },
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
    init = function()
      vim.api.nvim_create_autocmd("BufEnter", {
        group = vim.api.nvim_create_augroup("Neorg", { clear = true }),
        pattern = { "*.org", "*.norg" },
        callback = function()
          vim.opt.filetype = "norg"
        end,
      })
    end,
    config = function(_, opts)
      require("neorg").setup(opts)
    end,
  },
}
