return {
  {
    "lifepillar/pgsql.vim",
    ft = "sql",
    config = function()
      vim.g.sql_type_default = "pgsql"
    end,
  },
}
