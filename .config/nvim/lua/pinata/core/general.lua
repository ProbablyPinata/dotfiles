local o = vim.opt
local wo = vim.wo

o.compatible = false

o.termguicolors = true

-- Line numbering
o.number         = true
o.relativenumber = true

o.showmode = false

-- Extra column to stop code
-- shifting all the time
wo.signcolumn = "yes"

-- Indent Choice and Newlines
o.tabstop     = 8 -- make tabs appear 8 characters wide
o.softtabstop = 4 -- non-zero will mix spaces and tabs
o.shiftwidth  = 4 -- use 4-space indents (size of an "indent")
o.expandtab   = true -- tab in insert mode inserts spaces
o.autoindent  = true
o.shiftround  = true -- >>/<< indents to nearest multiple of shiftwidth
o.fileformat  = "unix"

-- line wrap
o.wrap = false

-- backup files & undo
o.swapfile = false
o.backup   = false
-- enable undos to persist across sessions
o.undofile = true
o.undodir  = os.getenv("HOME") .. "/.nvim/undo"
o.undolevels = 10000

-- enable filetype specific
-- options
o.filetype = "on"

-- search
o.hlsearch   = true
o.incsearch  = true
o.ignorecase = true
o.smartcase  = true
o.wrapscan   = false

-- colours
o.termguicolors = true
--o.background = "dark"

-- keep space below/above cursor
o.scrolloff = 10
o.sidescrolloff = 10

-- speed up macros and regexes
o.lazyredraw = true

-- share OS clipboard
-- unnamedplus to use Linux selection clipboard
-- o.clipboard:append { 'unnamed', 'unnamedplus' }

-- hide links with vim conceal
o.conceallevel = 2
o.concealcursor = 'nc'
