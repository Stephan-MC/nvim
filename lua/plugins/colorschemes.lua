return {
  -- Lush colorscheme for creating custom colors
  { "rktjmp/lush.nvim" },

  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  -- configure default colorscheme in lazyvim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
