return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ["*"] = {
          keys = {
            { "gl", vim.diagnostic.open_float, desc = "Line Diagnostics" },
          },
        },
      },
      diagnostics = {
        virtual_text = false,
      },
    },
  },
}
