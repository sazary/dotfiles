return {
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
      "lewis6991/spellsitter.nvim",
      "yioneko/nvim-yati",
    },
    opts = {
      ensure_installed = {

        -- defaults
        "vim",
        "vimdoc",
        "lua",

        "ini",
        "make",
        "toml",
        "yaml",
        "markdown",
        "markdown_inline",
        "regex",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "jsonc",

        "kotlin",
        "sql",

        "python",
        "htmldjango",

        "go",
        "gomod",
        "gosum",

        "dockerfile",
        "fish",

        "git_config",
        "git_rebase",
        "gitcommit",
        "gitignore",
      },
      highlight = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
      },
      indent = {
        enable = false,
      },
      pairs = {
        enable = true,
        disable = {},
        highlight_pair_events = {}, -- e.g. {"CursorMoved"}, -- when to highlight the pairs, use {} to deactivate highlighting
        highlight_self = false, -- whether to highlight also the part of the pair under cursor (or only the partner)
        goto_right_end = false, -- whether to go to the end of the right partner or the beginning
        fallback_cmd_normal = "call matchit#Match_wrapper('',1,'n')", -- What command to issue when we can't find a pair (e.g. "normal! %")
        keymaps = {
          goto_partner = "<leader>%",
          delete_balanced = "X",
        },
        delete_balanced = {
          only_on_first_char = false, -- whether to trigger balanced delete when on first character of a pair
          fallback_cmd_normal = nil, -- fallback command when no pair found, can be nil
          longest_partner = false, -- whether to delete the longest or the shortest pair when multiple found.
          -- E.g. whether to delete the angle bracket or whole tag in  <pair> </pair>
        },
      },
      yati = { enable = true },
    },
  },
}
