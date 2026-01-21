local function config_window(win, buf)
    vim.keymap.set("n", "q", "<C-w>c", { buffer = buf })
    vim.api.nvim_set_option_value("number", false, { win = win })
    vim.api.nvim_set_option_value("relativenumber", false, { win = win })
    vim.api.nvim_set_option_value("modifiable", false, { buf = buf })
    vim.api.nvim_set_option_value("signcolumn", "no", { win = win })
    vim.api.nvim_set_option_value("cursorline", false, { win = win })
    vim.api.nvim_set_option_value("colorcolumn", "", { win = win })
    vim.api.nvim_set_option_value("fillchars", "eob: ", { win = win })
end

vim.api.nvim_create_user_command("NikAbout", function()
    local buf = vim.api.nvim_create_buf(false, true)

    local win_width = vim.fn.winwidth(0)
    local win_height = vim.fn.winheight(0)
    local width = 80
    local height = math.floor(win_height * 0.3)
    local left = math.floor((win_width - width) / 2)
    local top = math.floor((win_height - height) / 2)

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, {
        "",
        "   A beautiful, powerful and highly customizable neovim config.",
        "   Author: NiK Wang",
        "   https://github.com/nik26788/dot-config/tree/master/nvim",
        "",
        string.format("   Copyright © 2022-%s Nikdev", os.date("%Y")),
    })

    local win = vim.api.nvim_open_win(buf, true, {
        relative = "win",
        width = width,
        height = height,
        row = top,
        col = left,
        border = "rounded",
        title = "",
        title_pos = "center",
        footer = "",
        footer_pos = "center",
    })

    config_window(win, buf)
end, { nargs = 0 })
