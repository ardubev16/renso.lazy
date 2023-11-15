-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

-- quit
vim.keymap.del("n", "<leader>qq")

local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
vim.keymap.del({ "n", "t" }, "<C-/>")
vim.keymap.del({ "n", "t" }, "<C-_>")
vim.keymap.set("n", "<C-\\>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })
