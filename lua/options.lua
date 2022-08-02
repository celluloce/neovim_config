--------------------
-- Options Value
--------------------
local o = vim.opt

o.encoding = 'utf-8'
o.backup = false
o.swapfile = false
o.history = 1000

o.virtualedit = 'block'

-- Indent line
-- g.indent_blankline_char = '▏'
o.list = true
o.listchars = 'tab:▏ ,trail:□,extends:»,precedes:«,space: '
o.wrap = false

-- Indentation
o.shiftwidth = 0
o.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
o.expandtab = false
o.smarttab = true

o.shiftround = true -- Round indent to multiple of 'shiftwidth
-- o.softtabstop = tw -- Number of spaces that a <Tab> counts for while performing editing operations
o.autoindent = true
o.smartindent = true

o.number = true
o.background = 'dark'
o.syntax = 'ON'
o.scrolloff = 3

o.ignorecase = true
o.smartcase = true
o.wrapscan = true
o.hlsearch = true
o.incsearch = true
o.showmatch = true

o.clipboard = 'unnamedplus'

--------------------
-- Glogal Value
--------------------
local g = vim.g

-- g.did_install_default_menus  = 1
-- g.did_install_syntax_menu    = 1
-- g.did_indent_on              = 1
-- g.did_load_filetypes         = 1
-- g.did_load_ftplugin          = 1
g.loaded_2html_plugin        = 1
g.loaded_gzip                = 1
g.loaded_man                 = 1
g.loaded_matchit             = 1
g.loaded_matchparen          = 1
g.loaded_netrwPlugin         = 1
g.loaded_remote_plugins      = 1
g.loaded_shada_plugin        = 1
g.loaded_spellfile_plugin    = 1
g.loaded_tarPlugin           = 1
g.loaded_tutor_mode_plugin   = 1
g.loaded_zipPlugin           = 1
g.skip_loading_mswin         = 1

-- :scriptnames
