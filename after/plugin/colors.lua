local function set_background_based_on_theme()
    local handle = io.popen("gsettings get org.gnome.desktop.interface gtk-theme")
    local theme = handle:read("*a")
    handle:close()

    theme = theme:gsub("^%s*(.-)%s*$", "%1"):gsub('^"(.*)"$', "%1")

    if theme == '\'Pop\'' then
        vim.o.background = 'light'
    else
        vim.o.background = 'dark'
    end
end

set_background_based_on_theme()
-- for zen-mode plugin
vim.cmd "highlight Twilight guibg=NONE ctermbg=NONE"
