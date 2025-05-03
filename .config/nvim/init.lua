-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.lazyvim_check_order = false
require("config.lazy")

vim.cmd("colorscheme lushwal")
require("lushwal").add_reload_hook({
  vim.cmd("LushwalCompile"),
})

vim.keymap.set("n", "<CR>", "m`o<Esc>``")
vim.keymap.set("n", "<S-CR>", "m`O<Esc>``")
vim.cmd("set nocursorline")

-- sudo command :W
vim.api.nvim_create_user_command("W", function()
  vim.cmd("write suda://%")
end, {})

-- linter
require("lint").linters_by_ft = {
  markdown = { "vale" },
  html = { "tidy" },
}

-- set colors
vim.cmd("set notgc")
