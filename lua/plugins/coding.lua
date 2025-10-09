return {
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      completion = {
        list = {
          selection = { preselect = false },
        },
        documentation = {
          auto_show_delay_ms = 0,
        },
      },
    },
  },

  {
    "zbirenbaum/copilot.lua",
    event = "VeryLazy",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
        keymap = {
          accept_line = "<M-L>",
        },
      },
      filetypes = {
        ["*"] = true,
      },
    },
  },
}
