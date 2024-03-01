-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Delete default mappings to move between windows and apply own keymaps for faster nagivation
vim.keymap.del({ "n", "t" }, "<C-h>")
vim.keymap.del({ "n", "t" }, "<C-j>")
vim.keymap.del({ "n", "t" }, "<C-k>")
vim.keymap.del({ "n", "t" }, "<C-l>")

vim.keymap.set({ "n", "v" }, "<C-j>", "10j", { desc = "Move down faster" })
vim.keymap.set({ "n", "v" }, "<C-k>", "10k", { desc = "Move up faster" })
--

-- Move to the end/start of the line in insert mode
vim.keymap.set("i", "<C-b>", "<esc>^i", { desc = "Move to the beginning of the line" })
vim.keymap.set("i", "<C-e>", "<end>", { desc = "Move to the end of the line" })
--

-- Close the current buffer
vim.keymap.set("n", "<M-w>", ":bd<CR>", { silent = true, desc = "Close the current buffer" })
--

-- Open an embeded terminar
-- TODO: Delete previous terminal keymaps
vim.keymap.set(
  "n",
  "<Leader>tt",
  ":ToggleTerm direction=float<CR>",
  { silent = true, desc = "Open a floating terminal" }
)
--
