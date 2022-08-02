-- ref: https://zenn.dev/kawarimidoll/articles/36b1cc92d00453

local usercmd = vim.api.nvim_buf_create_user_command
local inputkey = vim.api.nvim_input

----------------------------------------
-- Add Function
----------------------------------------
local addfunc = function(opts)
  local fname = (opts.args=='') and '_fn' or opts.args

  local str = 'local function '..fname..'()<CR>end'
  inputkey('i'..str..'<Esc>O')
end

usercmd(0, 'AddFunction', addfunc, {bang = true, nargs = '?'})

----------------------------------------
-- Add Function
----------------------------------------
local addvar = function(opts)
	local vname = (opts.args=='') and '_var' or opts.args

	local str = 'local '..vname..' = '
	inputkey('i'..str)
end

usercmd(0, 'AddVar', addvar, {bang = true, nargs = '?'})

----------------------------------------
-- Add If
----------------------------------------
local addif = function(opts)
  local cond = (opts.args=='') and 'true' or opts.args

  local str = 'if '..cond..' then<CR>end'

  inputkey('i'..str..'<Esc>O')
end

usercmd(0, 'AddIf', addif, {bang = true, nargs = '?'})

----------------------------------------
-- Add Loop
----------------------------------------
local addloop = function(opts)
	local str = 'while true do<CR>end'
	if opts.args == 'repeat' then
		str = 'repeat<CR>until true'
	end

  inputkey('i'..str..'<Esc>O')
end

local comploop = function(lead, _, _)
  local out = {}

  for _, c in ipairs{'while', 'repeat'} do
    if vim.startswith(c, lead) then
      out[#out+1] = c
    end
  end

  return out
end

usercmd(0, 'AddLoop', addloop, {bang = true, nargs = '?', complete = comploop})

----------------------------------------
-- Add For Loop
----------------------------------------
local forms = {
  numeric  = 'n = 1, 100',
  iterator  = 'k, v in pairs()',
}

local addfor = function(opts)
  local form = forms[opts.args] or ''

  local str = 'for '..form..' do<CR>end'

  inputkey('i'..str..'<Esc><Up>fd<Left>i')
end

local compfor = function(lead, _, _)
  local out = {}

  for c, _ in pairs(forms) do
    if vim.startswith(c, lead) then
      out[#out+1] = c
    end
  end

  return out
end

usercmd(0, 'AddFor', addfor, {bang = true, nargs = '?', complete = compfor})
