-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.keymap.set(
--   "n",
--   "<leader>rc",
--   ":w<CR> <bar>:let $CXXFLAGS='-std=c++17' <bar> :make ./%< <bar> :term ./%< <cr>",
--   { desc = "Run CPP" }
-- )
vim.keymap.set({ "i", "n" }, "<C-a>", "<esc>ggVG", { desc = "Select All" })
