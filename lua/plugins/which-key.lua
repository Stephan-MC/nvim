return {
  {
    "folke/which-key.nvim",
    opts = function()
      local wk = require("which-key")

      wk.register({
        -- ["<leader>w"] = { "<cmd>update<cr>", "Save File", { noremap = true } },
      })
    end,
  },
}
