local key_map = {}

key_map['n'] = {

    ['<Esc><Esc>'] = ':nohl<CR>',

    ['<A-h>'] = 'X',
    ['<A-l>'] = 'x',
    ['<A-j>'] = '<Esc>o',

    ['<C-h>'] = '5<Left>',
    ['<C-l>'] = '5<Right>',
    ['<C-j>'] = '5<Down>',
    ['<C-k>'] = '5<UP>',
    nil
};

key_map['i'] = {
    ['<A-h>'] = '<BS>',
    ['<A-l>'] = '<Delete>',
    ['<A-j>'] = '<Esc>o',

    ['<C-h>'] = '<Left>',
    ['<C-l>'] = '<Right>',
    ['<C-j>'] = '<Down>',
    ['<C-k>'] = '<UP>',
    ['<C-o>'] = '<Esc>',
    nil
};

-- local get_com_str = vim.o.commentstring
-- 
-- local _str = string.gsub(get_com_str, '%%s', ' \\1')
-- local com_str = ':s/\\(.*\\)/'.._str..'<CR>:nohl<CR>'
-- 
-- local _str = string.gsub(get_com_str, '%%s', ' \\(.*\\)')
-- local uncom_str =  ':s/'.._str..'/\\1/<CR>:nohl<CR>'
-- 
-- key_map['v'] = {
--     ['/'] = com_str, -- comment out
--     ['?'] = uncom_str, -- uncomment out
--     nil
-- }

local set_km = vim.api.nvim_set_keymap

local _temp = {noremap = true, silent = true}

for mode, inputs in pairs(key_map) do
    for km, cmd in pairs(inputs) do
        set_km(mode, km, cmd, _temp)
    end
end
