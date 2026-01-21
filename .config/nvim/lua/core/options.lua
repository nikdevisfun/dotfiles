local opt = vim.opt

-- ========================
-- Encoding
-- ========================
vim.scriptencoding = "utf-8"
opt.encoding = "utf-8"
opt.fileencoding = "utf-8"

-- ========================
-- UI
-- ========================
opt.number = true
opt.relativenumber = true
opt.title = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.colorcolumn = "100"

-- ========================
-- Indent
-- ========================
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 0
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true
opt.breakindent = true

-- ========================
-- Wrap
-- ========================
opt.wrap = false

-- ========================
-- Search
-- ========================
opt.hlsearch = false
opt.ignorecase = true
opt.smartcase = true
opt.inccommand = "split"

-- ========================
-- Window
-- ========================
opt.splitbelow = true
opt.splitright = true
opt.splitkeep = "cursor"
opt.laststatus = 0
opt.scrolloff = 5
opt.sidescrolloff = 8

-- ========================
-- Cmdline
-- ========================
opt.showcmd = false
opt.showmode = false
opt.cmdheight = 0

-- ========================
-- Files
-- ========================
opt.backup = false
opt.backspace = { "start", "eol", "indent" }
opt.path:append({ "**" })
opt.wildignore:append({ "*/node_modules/*" })

-- ========================
-- Mouse & Clipboard
-- ========================
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

-- ========================
-- Fold (Treesitter)
-- ========================
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldenable = true
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldcolumn = "1"

-- ========================
-- Format
-- ========================
opt.formatoptions:append({ "r" })
