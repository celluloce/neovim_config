local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

-- Remove whitespace on save
-- autocmd('BufWritePre', {
--     pattern = '*',
--     command = ":%s/\\s\\+$//e"
-- })

-- Comment Out Keymap
local function commentkm()
  local com_str = vim.bo.commentstring
  local set_km = vim.api.nvim_set_keymap
  local _opt = {noremap = true, silent = true}

  local _str = com_str:format(' \\1')
  local comm_cmd = (':s/\\(\\S\\)/%s/<CR>:nohl<CR>'):format(_str)

  local _str = com_str:format(' \\(\\S*.*\\)')
  local uncomm_cmd = (':s/%s/\\1/<CR>:nohl<CR>'):format(_str)

  set_km('v', '/', comm_cmd, _opt)
  set_km('v', '?', uncomm_cmd, _opt)
end

local function loadfiletype()
  local ftype = vim.bo.filetype
  local ftlist = {
    lua = true,
  }

  if ftlist[ftype] then
    require('filetype.'..ftype)
  end
end

autocmd('FileType', {
  pattern = '*',
  callback = function()
    commentkm()
    loadfiletype()
  end
})
