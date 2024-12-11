return {
  "cvigilv/esqueleto.nvim",
  opts = {},
  config = function()
    require("esqueleto").setup({
      patterns = { "cpp" },
    })
  end,
}
