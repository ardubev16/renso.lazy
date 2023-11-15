-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
local function augroup(name)
  return vim.api.nvim_create_augroup("custom_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "Filetype" }, {
  group = augroup("filetype"),
  pattern = {
    "html",
    "css",
    "json",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
  },
  command = "setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2",
})

vim.api.nvim_create_autocmd({ "Filetype" }, {
  group = augroup("markdown"),
  pattern = "markdown",
  command = "setlocal wrap",
})
