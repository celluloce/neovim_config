local setkm = vim.api.nvim_set_keymap

local opt = {noremap = true, silent = true}

-- Normal Mode
setkm('n', '<Esc><Esc>', ':nohl<CR>', opt)

setkm('n', 'x',     '"_x',      opt)
setkm('n', '<Del>', '"_<Del>',  opt)
setkm('n', 'X',     '"_X',      opt)
setkm('n', 's',     '"_s',      opt)
setkm('n', 'S',     '"_S',      opt)

setkm('n', '<A-h>', 'X',        opt)
setkm('n', '<A-l>', 'x',        opt)
setkm('n', '<A-j>', 'o',        opt)
setkm('n', '<A-k>', 'O',        opt)

-- Insert Mode
setkm('i', '<A-h>', '<BS>',     opt)
setkm('i', '<A-l>', '<Delete>', opt)
setkm('i', '<A-k>', '<Esc>O',   opt)
setkm('i', '<A-j>', '<Esc>o',   opt)

setkm('i', '<C-h>', '<Left>',   opt)
setkm('i', '<C-l>', '<Right>',  opt)
setkm('i', '<C-k>', '<UP>',     opt)
setkm('i', '<C-j>', '<Down>',   opt)

setkm('i', '<C-o>', '<Esc>',    opt)
setkm('i', '<C-c>', '<Esc>:',    opt)

-- Move 5
for _, v in ipairs{'n', 'v'} do
  setkm(v, '<C-h>', '5<Left>',  opt)
  setkm(v, '<C-l>', '5<Right>', opt)
  setkm(v, '<C-j>', '5<Down>',  opt)
  setkm(v, '<C-k>', '5<UP>',    opt)
end

-- Comment Out
--  *move to ./lua/autocmd.lua*
