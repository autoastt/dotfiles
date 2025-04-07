return {
  "xeluxee/competitest.nvim",
  dependencies = "MunifTanjim/nui.nvim",
  keys = {
    { "<leader>ra", ":CompetiTest add_testcase<CR>", desc = "Add Testcase" },
    { "<leader>re", ":CompetiTest edit_testcase<CR>", desc = "Edit Testcase" },
    { "<leader>rd", ":CompetiTest delete_testcase<CR>", desc = "Delete Testcase" },
    { "<leader>rr", ":CompetiTest run<CR>", desc = "Run Testcase" },
    { "<leader>rs", ":CompetiTest show_ui<CR>", desc = "Show Testcase" },
    { "<leader>rt", ":CompetiTest receive testcases<CR>", desc = "Receive Testcase" },
  },
  config = function()
    require("competitest").setup({
      testcases_use_single_file = true,
      compile_command = {
        c = { exec = "gcc", args = { "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
        cpp = { exec = "g++-14", args = { "-std=c++20", "-Wall", "$(FNAME)", "-o", "$(FNOEXT)" } },
        rust = { exec = "rustc", args = { "$(FNAME)" } },
        java = { exec = "javac", args = { "$(FNAME)" } },
      },
    })
  end,
}
