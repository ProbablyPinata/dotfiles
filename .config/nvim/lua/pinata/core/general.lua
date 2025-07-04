local o = vim.opt
local wo = vim.wo

o.termguicolors = true
o.winborder = 'solid'

-- No timeout on leader keymaps
o.timeout = false
o.list = true

-- Line numbering
o.number         = true
o.relativenumber = true

o.showmode = false

-- Extra column to stop code
-- shifting all the time
wo.signcolumn = "yes"

-- Indent Choice and Newlines
o.tabstop     = 8 -- make tabs appear 8 characters wide
o.softtabstop = 0 -- non-zero will mix spaces and tabs
o.shiftwidth  = 2 -- use 4-space indents (size of an "indent")
o.expandtab   = true -- tab in insert mode inserts spaces
o.autoindent  = true
o.shiftround  = true -- >>/<< indents to nearest multiple of shiftwidth
o.fileformat  = "unix"

-- line wrap
o.wrap = false
o.textwidth = 80

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

o.conceallevel = 0
-- o.concealcursor = '' -- do not conceal cursorline

o.fillchars = {
    vert = "█", -- alternatives │
    -- fold = " ",
    -- eob = " ", -- suppress ~ at EndOfBuffer
    diff = "⣿", -- alternatives = ╱ ░ ─
    msgsep = "‾",
    -- foldopen = "▾",
    -- foldsep = "│",
    -- foldclose = "▸",
}
