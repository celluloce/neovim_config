-- NR-16   NR-8    COLOR NAME
-- 0       0       Black
-- 1       4       DarkBlue
-- 2       2       DarkGreen
-- 3       6       DarkCyan
-- 4       1       DarkRed
-- 5       5       DarkMagenta
-- 6       3       Brown, DarkYellow
-- 7       7       LightGray, LightGrey, Gray, Grey
-- 8       0*      DarkGray, DarkGrey
-- 9       4*      Blue, LightBlue
-- 10      2*      Green, LightGreen
-- 11      6*      Cyan, LightCyan
-- 12      1*      Red, LightRed
-- 13      5*      Magenta, LightMagenta
-- 14      3*      Yellow, LightYellow
-- 15      7*      White

local black = 'black'
local darkblue = 'darkblue'
local darkgreen = 'darkgreen'
local darkcyan = 'darkcyan'
local darkred = 'darkred'
local darkmagenta = 'darkmagenta'
local brown = 'brown'
local darkyellow = 'darkyellow'
local lightgray = 'lightgray'
local gray = 'gray'
local darkgray = 'darkgray'
local blue = 'blue'
local lightblue = 'lightblue'
local green = 'green'
local lightgreen = 'lightgreen'
local cyan = 'cyan'
local lightcyan = 'lightcyan'
local red = 'red'
local lightred = 'lightred'
local magenta = 'magenta'
local lightmagenta = 'lightmagenta'
local yellow = 'yellow'
local lightyellow = 'lightyellow'
local white = 'white'

local hl = {
    map = {},
    fg = function(self, val)
        self.map['ctermfg'] = val
        return self
    end,
    bg = function(self, val)
        self.map['ctermbg'] = val
        return self
    end,
    opt = function(self, val)
        self.map[val] = true
        return self
    end,
    out = function(self)
        out = self.map
        self.map = {}
        return out
    end
}
-- aaa

local set_hl = vim.api.nvim_set_hl

set_hl(0, 'SpecialKey',                 hl:out())
-- set_hl(0, 'TermCursor',                 hl:out())
set_hl(0, 'NonText',                    hl:fg(lightgray):out())
-- set_hl(0, 'Directory',                  hl:out())

set_hl(0, 'ErrorMsg',                   hl:fg(lightred):out())
set_hl(0, 'IncSearch',                  hl:fg(black):bg(white):out())
set_hl(0, 'Search',                     hl:fg(white):bg(darkyellow):out())
set_hl(0, 'MoreMsg',                    hl:fg(yellow):out())
set_hl(0, 'ModeMsg',                    hl:fg(yellow):out())

set_hl(0, 'LineNr',                     hl:fg(white):out())
-- set_hl(0, 'CursorLineNr',               hl:out())
-- set_hl(0, 'Question',                   hl:out())
set_hl(0, 'StatusLine',                 hl:fg(white):bg(blue):out())
set_hl(0, 'StatusLineNC',               hl:fg(gray):out())

set_hl(0, 'VertSplit',                  hl:fg(white):bg(blue):out())
-- set_hl(0, 'Title',                      hl:out())
set_hl(0, 'Visual',                     hl:fg(white):bg(blue):out())
set_hl(0, 'WarningMsg',                 hl:fg(yellow):out())
-- set_hl(0, 'WildMenu',                   hl:out())
set_hl(0, 'Folded',                     hl:fg(black):bg(yellow):out())
set_hl(0, 'FoldColumn',                 hl:fg(black):bg(gray):out())

set_hl(0, 'DiffAdd',                    hl:bg(red):out())
set_hl(0, 'DiffChange',                 hl:bg(darkgreen):out())
set_hl(0, 'DiffDelete',                 hl:bg(cyan):out())
set_hl(0, 'DiffText',                   hl:bg(lightgreen):out())

-- set_hl(0, 'SignColumn',                 hl:out())
-- set_hl(0, 'Conceal',                    hl:out())
-- set_hl(0, 'SpellBad',                   hl:out())
-- set_hl(0, 'SpellCap',                   hl:out())
-- set_hl(0, 'SpellRare',                  hl:out())
-- set_hl(0, 'SpellLocal',                 hl:out())

set_hl(0, 'Pmenu',                      hl:fg(black):bg(gray):out())
set_hl(0, 'PmenuSel',                   hl:fg(white):bg(blue):out())
-- set_hl(0, 'PmenuSbar',                  hl:out())
-- set_hl(0, 'PmenuThumb',                 hl:out())

-- set_hl(0, 'TabLine',                    hl:out())
-- set_hl(0, 'TabLineSel',                 hl:out())
-- set_hl(0, 'TabLineFill',                hl:out())

-- set_hl(0, 'CursorColumn',               hl:out())
-- set_hl(0, 'CursorLine',                 hl:out())
-- set_hl(0, 'ColorColumn',                hl:out())

-- set_hl(0, 'RedrawDebugNormal',          hl:out())
-- set_hl(0, 'RedrawDebugClear',           hl:out())
-- set_hl(0, 'RedrawDebugComposed',        hl:out())
-- set_hl(0, 'RedrawDebugRecompose',       hl:out())

set_hl(0, 'Cursor',                     hl:fg(black):bg(white):out())
set_hl(0, 'lCursor',                    hl:fg(black):bg(white):out())
set_hl(0, 'Normal',                     hl:fg(white):bg(black):out())
-- set_hl(0, 'FloatShadow',                hl:out())
-- set_hl(0, 'FloatShadowThrough',         hl:out())
set_hl(0, 'Error',                      hl:fg(lightred):bg(red):out())
set_hl(0, 'Todo',                       hl:fg(black):bg(darkyellow):out())
set_hl(0, 'Constant',                   hl:fg(blue):out())
set_hl(0, 'Identifier',                 hl:fg(blue):out())
set_hl(0, 'Statement',                  hl:fg(green):out())
set_hl(0, 'Label',                      hl:fg(yellow):out())
set_hl(0, 'Operator',                   hl:fg(green):out())
set_hl(0, 'PreProc',                    hl:fg(green):out())
set_hl(0, 'Type',                       hl:fg(blue):out())
set_hl(0, 'Special',                    hl:fg(cyan):out())
-- set_hl(0, 'DiagnosticError',            hl:out())
-- set_hl(0, 'DiagnosticWarn',             hl:out())
-- set_hl(0, 'DiagnosticInfo',             hl:out())
-- set_hl(0, 'DiagnosticHint',             hl:out())
-- set_hl(0, 'DiagnosticUnderlineError',   hl:out())
-- set_hl(0, 'DiagnosticUnderlineWarn',    hl:out())
-- set_hl(0, 'DiagnosticUnderlineInfo',    hl:out())
-- set_hl(0, 'DiagnosticUnderlineHint',    hl:out())
set_hl(0, 'MatchParen',                 hl:fg(white):bg(magenta):out())
set_hl(0, 'Comment',                    hl:fg(lightgreen):out())
set_hl(0, 'Underlined',                 hl:fg(cyan):opt('underline'):out())
-- set_hl(0, 'Ignore',                     hl:out())
-- set_hl(0, 'NvimInternalError',          hl:out())

-- :so $VIMRUNTIME/syntax/hitest.vim
