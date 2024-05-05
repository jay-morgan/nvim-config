-- Set up the custom make commands in Vimscript
vim.cmd([[
function! MakeCheck()
    set makeprg=cs\ check\ %
    make
endfunction

function! MakeDelta()
    set makeprg=cs\ delta
    make
endfunction
]])

vim.api.nvim_set_keymap('n', '<leader>cc', ':call MakeCheck()<CR>', { noremap = true, silent = true, desc = "CodeScene [C]heck" })
vim.api.nvim_set_keymap('n', '<leader>cd', ':call MakeDelta()<CR>', { noremap = true, silent = true, desc = "CodeScene [D]elta" })
