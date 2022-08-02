-- NR-16   NR-8  COLOR NAME
-- 0     0     Black
-- 1     4     DarkBlue
-- 2     2     DarkGreen
-- 3     6     DarkCyan
-- 4     1     DarkRed
-- 5     5     DarkMagenta
-- 6     3     Brown, DarkYellow
-- 7     7     LightGray, LightGrey, Gray, Grey
-- 8     0*    DarkGray, DarkGrey
-- 9     4*    Blue, LightBlue
-- 10    2*    Green, LightGreen
-- 11    6*    Cyan, LightCyan
-- 12    1*    Red, LightRed
-- 13    5*    Magenta, LightMagenta
-- 14    3*    Yellow, LightYellow
-- 15    7*    White

local function cterm(fg, bg, opt)
  local map = {
    ctermfg = fg,
    ctermbg = bg or nil,
  }
  if opt then
    map[opt] = true
  end
  return map
end

local hllist = {
  -- 'SpecialKey',   {},
  -- 'TermCursor',   {},
  -- 'Directory',    {},
  'NonText',         cterm('darkgray'),

  'ErrorMsg',        cterm('lightred'),
  'IncSearch',       cterm('black', 'white'),
  'Search',          cterm('white', 'cyan'),
  'MoreMsg',         cterm('yellow'),
  'ModeMsg',         cterm('yellow'),

  'LineNr',          cterm('white'),
  -- 'CursorLineNr', {},
  -- 'Question',     {},
  'StatusLine',      cterm('white', 'blue'),
  'StatusLineNC',    cterm('gray'),

  'VertSplit',       cterm('white', 'blue'),
  -- 'Title',        {},
  'Visual',          cterm('white', 'blue'),
  'WarningMsg',      cterm('yellow'),
  -- 'WildMenu',     {},
  'Folded',          cterm('black', 'yellow'),
  'FoldColumn',      cterm('black', 'gray'),

  'DiffAdd',         cterm(nil, 'red'),
  'DiffChange',      cterm(nil, 'darkgreen'),
  'DiffDelete',      cterm(nil, 'cyan'),
  'DiffText',        cterm(nil, 'lightgreen'),

  -- 'SignColumn',   {},
  -- 'Conceal',      {},
  -- 'SpellBad',     {},
  -- 'SpellCap',     {},
  -- 'SpellRare',    {},
  -- 'SpellLocal',   {},

  'Pmenu',           cterm('black', 'gray'),
  'PmenuSel',        cterm('white', 'blue'),
  -- 'PmenuSbar',    {},
  -- 'PmenuThumb',   {},

  -- 'TabLine',      {},
  -- 'TabLineSel',   {},
  -- 'TabLineFill',  {},

  -- 'CursorColumn', {},
  -- 'CursorLine',   {},
  -- 'ColorColumn',  {},

  -- 'RedrawDebugNormal',    {},
  -- 'RedrawDebugClear',     {},
  -- 'RedrawDebugComposed',  {},
  -- 'RedrawDebugRecompose', {},

  'Cursor',     cterm('black', 'white'),
  'lCursor',    cterm('black', 'white'),
  'Normal',     cterm('white', 'black'),

  -- 'FloatShadow',        {},
  -- 'FloatShadowThrough', {},

  'Error',      cterm('lightred', 'red'),
  'Todo',       cterm('black', 'darkyellow'),
  'Constant',   cterm('lightblue'),
  'Identifier', cterm('lightmagenta'),
  'Statement',  cterm('lightgreen'),
  'Label',      cterm('yellow'),
  'Operator',   cterm('green'),
  'PreProc',    cterm('green'),
  'Type',       cterm('lightblue'),
  'Special',    cterm('cyan'),

  -- 'DiagnosticError',          {},
  -- 'DiagnosticWarn',           {},
  -- 'DiagnosticInfo',           {},
  -- 'DiagnosticHint',           {},
  -- 'DiagnosticUnderlineError', {},
  -- 'DiagnosticUnderlineWarn',  {},
  -- 'DiagnosticUnderlineInfo',  {},
  -- 'DiagnosticUnderlineHint',  {},

  'MatchParen', cterm('white', 'magenta'),
  'Comment',    cterm('lightcyan'),
  'Underlined', cterm('cyan', nil, 'underline'),

  -- 'Ignore',            {},
  -- 'NvimInternalError', {},
}

local sethl = vim.api.nvim_set_hl

for index = 1, #hllist, 2 do
  sethl(0, hllist[index], hllist[index+1])
end

-- :so $VIMRUNTIME/syntax/hitest.vim
