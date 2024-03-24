return {
  {
    "nvimdev/dashboard-nvim",
    opts = function()
      return {
        theme = "hyper",

        shortcut_type = "string",
        hide = {
          statusline = false,
        },
        config = {
          packages = { enable = false }, -- show how many plugins neovim loaded
          footer = function()
            return {}
          end,
          week_header = {
            enable = true,
          },

          shortcut = {
            {
              icon = "󰎔 ",
              desc = "new",
              group = "@property",
              action = "ene | startinsert",
              key = "e",
            },
            {
              icon = "󰙅 ",
              desc = "file tree",
              group = "@property",
              action = "Neotree<CR>",
              key = "t",
            },
            {
              icon = " ",
              desc = "files",
              group = "@property",
              action = "Telescope find_files",
              key = "f",
            },
            {
              icon = " ",
              desc = "grep",
              group = "@property",
              action = "Telescope live_grep",
              key = "/",
            },
            {
              icon = "󰊳 ",
              desc = "update",
              group = "@property",
              action = "lazy update",
              key = "u",
            },
            {
              icon = "󰗼 ",
              desc = "quit",
              group = "@property",
              action = "q",
              key = "q",
            },
          },
        },
      }
    end,
  },
}
