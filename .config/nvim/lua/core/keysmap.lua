-- ========================
-- Leader
-- ========================
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap

-- helper
local function map(mode, lhs, rhs, desc, extra)
    keymap.set(mode, lhs, rhs, vim.tbl_extend("force", { desc = desc, silent = true }, extra or {}))
end

-- ========================
-- Insert mode
-- ========================
map("i", "jj", "<ESC>", "Exit insert mode")

-- ========================
-- Visual mode
-- ========================
map("v", "J", ":m '>+1<CR>gv=gv", "Move line down")
map("v", "K", ":m '<-2<CR>gv=gv", "Move line up")

-- ========================
-- Normal mode
-- ========================

-- Increase / Decrease
map("n", "+", "<C-a>", "Increase number")
map("n", "-", "<C-x>", "Decrease number")

-- ------------------------
-- Window
-- ------------------------
map("n", "sl", "<C-w>v", "Split window vertically")
map("n", "sb", "<C-w>s", "Split window horizontally")

map("n", "<leader>=", ":vertical resize +5<CR>")
map("n", "<leader>-", ":vertical resize -5<CR>")

map("n", "<C-h>", "<C-w><Left>", "Go left window")
map("n", "<C-l>", "<C-w><Right>", "Go right window")
map("n", "<C-j>", "<C-w><Down>", "Go down window")
map("n", "<C-k>", "<C-w><Up>", "Go up window")
map("n", "<leader>wq", "<C-w>c", "Close current window")

-- ------------------------
-- Move
-- ------------------------
map({ "n", "x" }, "H", "^", "Go to line start")
map({ "n", "x" }, "L", "$", "Go to line end")

-- map({ "n", "x" }, "<C-j>", "5j", "Move down 5 lines")
-- map({ "n", "x" }, "<C-k>", "5k", "Move up 5 lines")
-- map({ "n", "x" }, "<C-h>", "7h", "Move left 7 chars")
-- map({ "n", "x" }, "<C-l>", "7l", "Move right 7 chars")

-- ------------------------
-- Save / Quit
-- ------------------------
map("n", "<leader>Q", ":qa<CR>", "Quit")
map("n", "Q", ":q<CR>", "Quit")
map("n", "W", ":w<CR>", "Save")
map("n", "<leader>q", ":qa<CR>", "Quit all")
map({ "n", "i" }, "<C-z>", "<Cmd>undo<CR>", "Undo")

-- ------------------------
-- Edit
-- ------------------------
map("n", "mm", '"_dd', "Delete line without yanking")

map("n", ";", ":", "Enter command mode")

map("n", "<leader><CR>", ":nohl<CR>", "Clear search highlight")

map("n", "<leader><leader>", "/<++><CR>:nohlsearch<CR>c11l", "Quick placeholder edit")

-- ------------------------
-- Misc
-- ------------------------
map("n", "s", "<nop>", "Disable s")

map("n", "vk", ":e $HOME/.config/nvim/lua/core/keysmap.lua<CR>", "Edit keymaps")
map("n", "vo", ":e $HOME/.config/nvim/lua/core/options.lua<CR>", "Edit options")

map("n", "R", ":w<CR>:source $MYVIMRC<CR>", "Reload config")
