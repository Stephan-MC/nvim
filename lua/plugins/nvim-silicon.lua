return {
  {
    "michaelrommel/nvim-silicon",
    lazy = true,
    cmd = "Silicon",
    config = function()
      require("silicon").setup({
        font = "FiraCode Nerd Font Mono=20;Noto Color Emoji=24",
        theme = "OneHalfDark",
      })
    end,
  },
}
