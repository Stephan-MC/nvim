-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

local map = Util.safe_keymap_set
local unmap = vim.api.nvim_del_keymap
local wk = require("which-key")

-- [[ Windows ]]
map("n", "<leader>ww", "<C-W>p", {
  desc = "Move cursor to other window",
})
map("n", "<leader>wd", "<C-W>c", {
  desc = "Close window",
})
map("n", "<leader>ws", "<C-W>s", {
  desc = "Split window horizontally",
})
map("n", "<leader>wv", "<C-W>v", {
  desc = "Split window vertically",
})
map({ "n", "v" }, "<leader>wh", "<C-W><C-H>", {
  desc = "Move to left split",
})
map({ "n", "v" }, "<leader>wj", "<C-W><C-J>", {
  desc = "Move to split below",
})
map({ "n", "v" }, "<leader>wk", "<C-W><C-K>", {
  desc = "Move to right split",
})
map({ "n", "v" }, "<leader>wl", "<C-W><C-L>", {
  desc = "Move to right split",
})
unmap("n", "<leader>w-")
unmap("n", "<leader>w|")
unmap("n", "<leader>|")
unmap("n", "<leader>-")

-- [[ File ]]
map({ "n" }, "<leader>fu", vim.cmd.update, {
  desc = "save file (only if modified)",
})
map({ "n" }, "<leader>fs", vim.cmd.update, {
  desc = "save file",
})

-- [[ Help ]]
--[[
wk.register({
  ["<leader>h"] = {
    name = "Help",
  },
})
map({ "n", "v" }, "<leader>hh", vim.cmd.help, { desc = "Nvim Help" })
map({ "n", "v" }, "<leader>hk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
]]
--

map({ "n" }, "<leader>o", "<cmd>Neotree focus<cr>", {
  desc = "Explorer focus",
})
