return {
  { import = "plugins.ui.telescope" },
  { import = "plugins.ui.dashboard" },
  { import = "plugins.ui.mini_animate" },

  { "jubnzv/virtual-types.nvim" },

  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        delay = 30,
        animation = require("mini.indentscope").gen_animation.quadratic({
          easing = "out",
          duration = 90,
          unit = "total",
        }),
      },
    },
  },

  { "Bekaboo/dropbar.nvim", event = "VeryLazy" },

  {
    "folke/noice.nvim",
    event = "VimEnter",
  },
}
