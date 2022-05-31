local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Remove whitespace on save
autocmd('BufWritePre', {
    pattern = '*',
    command = ":%s/\\s\\+$//e"
})

autocmd('FileType', {
    pattern = '*',
    callback = function()
        local get_com_str = vim.bo.commentstring

        local _str = string.gsub(get_com_str, '%%s', ' \\1')
        local com_str = ':s/\\(.*\\)/'.._str..'<CR>:nohl<CR>'

        local _str = string.gsub(get_com_str, '%%s', ' \\(.*\\)')
        local uncom_str =  ':s/'.._str..'/\\1/<CR>:nohl<CR>'

        local set_km = vim.api.nvim_set_keymap
        local _temp = {noremap = true, silent = true}

        set_km('v', '/', com_str, _temp)
        set_km('v', '?', uncom_str, _temp)
    end
})
