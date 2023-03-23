return {
  {
    "echasnovski/mini.comment",
    version = false,
    opts = {
      mappings = {
        -- Toggle comment (like `gcip` - comment inner paragraph) for both
        -- Normal and Visual modes
        comment = "<leader>;;",

        -- Toggle comment on current line
        comment_line = "<leader>;b",

        -- Define 'comment' textobject (like `dgc` - delete whole comment block)
        textobject = "<leader>;;",
      },
    },
  },
}
