return {
  {
    "hrsh7th/nvim-cmp",
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      opts.experimental.ghost_text = false
      opts.completion.completeopt = "menu,menuone,noselect"

      local cmp = require("cmp")
      opts.mapping["<CR>"] = cmp.mapping.confirm()

      cmp.setup.filetype({ "sql" }, {
        sources = {
          { name = "vim-dadbod-completion" },
          { name = "buffer" },
        },
      })
    end,
  },

  { "zbirenbaum/copilot-cmp", enabled = false },
  {
    "zbirenbaum/copilot.lua",
    event = "VeryLazy",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
      },
      filetypes = {
        ["*"] = true,
      },
    },
  },
}
