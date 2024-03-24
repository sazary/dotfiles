return {
  {
    "chrisgrieser/nvim-spider",
    lazy = true,
    keys = {
      {
        "w",
        mode = { "n", "o", "x" },
        function()
          require("spider").motion("w")
        end,
        desc = "Spider-w",
      },
      {
        "e",
        mode = { "n", "o", "x" },
        function()
          require("spider").motion("e")
        end,
        desc = "Spider-e",
      },
      {
        "b",
        mode = { "n", "o", "x" },
        function()
          require("spider").motion("b")
        end,
        desc = "Spider-b",
      },
      {
        "ge",
        mode = { "n", "o", "x" },
        function()
          require("spider").motion("ge")
        end,
        desc = "Spider-ge",
      },
    },
  },
}
