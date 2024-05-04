-- require "rose-pine"
-- require "tokyonight"
-- require "vesper"
-- require "melange"

function CustomColors(color)
  -- color = "melange"
  -- vim.cmd.colorscheme(color)
  -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

  -- for twilight plugin
  vim.cmd "highlight Twilight guibg=NONE ctermbg=NONE"

  -- manual transparency some themes forget below
  -- disable colorcolumn for help
  vim.cmd [[
    augroup DisableColorColumnForHelp
        autocmd!
        autocmd FileType help set colorcolumn=
    augroup END
]]

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

-- Call the function
set_background_based_on_theme()

  -- List of Gitsigns highlight groups to customize
  local gitsigns_highlight_groups = {
    "GitSignsAdd",
    "GitSignsChange",
    "GitSignsDelete",
    "GitSignsChangedelete",
    "GitSignsTopdelete",
    "GitSignsUntracked",
    "GitSignsAddNr",
    "GitSignsChangeNr",
    "GitSignsDeleteNr",
    "GitSignsChangedeleteNr",
    "GitSignsTopdeleteNr",
    "GitSignsUntrackedNr",
    "GitSignsAddLn",
    "GitSignsChangeLn",
    "GitSignsChangedeleteLn",
    "GitSignsUntrackedLn",
    "GitSignsStagedAdd",
    "GitSignsStagedChange",
    "GitSignsStagedDelete",
    "GitSignsStagedChangedelete",
    "GitSignsStagedTopdelete",
    "GitSignsStagedAddNr",
    "GitSignsStagedChangeNr",
    "GitSignsStagedDeleteNr",
    "GitSignsStagedChangedeleteNr",
    "GitSignsStagedTopdeleteNr",
    "GitSignsStagedAddLn",
    "GitSignsStagedChangeLn",
    "GitSignsStagedDeleteLn",
    "GitSignsStagedChangedeleteLn",
    "GitSignsStagedTopdeleteLn",
    "GitSignsAddPreview",
    "GitSignsDeletePreview",
    "GitSignsCurrentLineBlame",
    "GitSignsAddInline",
    "GitSignsDeleteInline",
    "GitSignsChangeInline",
    "GitSignsAddLnInline",
    "GitSignsChangeLnInline",
    "GitSignsDeleteLnInline",
    "GitSignsDeleteVirtLn",
    "GitSignsDeleteVirtLnInLine",
    "GitSignsVirtLnum",
  }

  -- -- Set the background color to transparent for the specified groups
  for _, group in ipairs(gitsigns_highlight_groups) do
    vim.cmd("highlight " .. group .. " guibg=NONE ctermbg=NONE")
  end

  -- -- Set the background and border of the file browser to be transparent
  vim.cmd "highlight TelescopeNormal guibg=NONE ctermbg=NONE"
  vim.cmd "highlight TelescopePromptBorder guibg=NONE ctermbg=NONE"
  vim.cmd "highlight TelescopeResultsBorder guibg=NONE ctermbg=NONE"
  -- -- Customize the file preview border
  vim.cmd "highlight TelescopePreviewBorder guibg=NONE ctermbg=NONE"
  -- -- Customize the background of the selected line
  vim.cmd "highlight TelescopeSelection guibg=NONE ctermbg=NONE"
  vim.cmd "highlight TelescopeSelectionCaret guibg=NONE ctermbg=NONE"
  -- -- Customize the background when inputting text
  vim.cmd "highlight TelescopeMatching guibg=NONE ctermbg=NONE"
  -- -- Customize the background of the input field
  vim.cmd "highlight TelescopePrompt guibg=NONE ctermbg=NONE"
  vim.cmd "highlight TelescopePromptNormal guibg=NONE ctermbg=NONE"
end

CustomColors()
