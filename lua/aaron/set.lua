-- Relative line numbers are a must
vim.opt.nu = true
vim.opt.relativenumber = true

-- 4 spaces please!!
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Markdown and YAML should use 2 spaces
vim.api.nvim_create_autocmd("FileType", {
	pattern = "markdown,yaml",
	command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2",
})

-- Automatically indent lines
vim.opt.smartindent = true

-- Wrapping lines is a crime against humanity
vim.opt.wrap = false

-- Search Options
vim.opt.showmatch = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.scrolloff = 10

-- This is already shown in the status line
vim.opt.showmode = false

vim.diagnostic.config({ virtual_text = true })

vim.g.markdown_fenced_languages = {
	"yaml",
	"sh",
}

-- Automatically line-break non-code files
vim.api.nvim_create_autocmd("FileType", {
	pattern = "text,markdown",
	command = "setlocal textwidth=80",
})
