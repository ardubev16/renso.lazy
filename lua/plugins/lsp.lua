return {
  {
    "neovim/nvim-lspconfig",
    init = function()
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = { "gl", vim.diagnostic.open_float, desc = "Line Diagnostics" }
    end,
    opts = {
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
