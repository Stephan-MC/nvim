-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local mergeVim = require("utils").mergeVim

local v = {
  g = {
    relativenumber = true,
  },
  wo = {
    relativenumber = true,
  },
  opt = {
    relativenumber = true,
  },
  filetype = {
    add = {
      pattern = {
        [".*env.*"] = "sh",
      },
    },
  },
}

for key, value in pairs(v) do
  mergeVim(vim[key], value)
end
