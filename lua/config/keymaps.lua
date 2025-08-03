vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

vim.keymap.set("n", "<C-n>", "<cmd>bn<CR>")
vim.keymap.set("n", "<C-p>", "<cmd>bp<CR>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzz")
vim.keymap.set("n", "N", "Nzz")

vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "[P]ase without yank" })
vim.keymap.set({"n", "x"}, "<leader>d", "\"_d", { desc = "[D]elete without yank" })
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { desc = "Delete Buffer" })

