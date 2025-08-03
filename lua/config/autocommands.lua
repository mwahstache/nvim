-- vim.api.nvim_create_autocmd("TextYankPost", {
--   desc = "Highlight when yanking",
--   group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
--   callback = function()
--     vim.highlight.on_yank()
--   end,
-- })

-- vim.cmd("au nvim_ghost_user_autocommands User bumr.mwahstache.com setfiletype mediawiki")

local spell_types = { "text", "plaintext", "gitcommit", "markdown", "tex" }
vim.api.nvim_create_augroup("Spellcheck", { clear = true })
vim.api.nvim_create_autocmd({ "FileType" }, {
  group = "Spellcheck", -- Grouping the command for easier management
  pattern = spell_types, -- Only apply to these file types
  callback = function()
    vim.opt_local.spell = true -- Enable spellcheck for these file types
  end,
  desc = "Enable spellcheck for defined filetypes", -- Description for clarity
})

