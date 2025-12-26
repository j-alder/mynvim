vim.opt.number = true         -- show line numbers
vim.opt.cursorline = true     -- highlight cursor line
vim.opt.expandtab = true      -- use space instead of tab
vim.opt.incsearch = true      -- incrementally highlight matching characters while searching
vim.opt.ignorecase = true     -- ignore capital letters during search
vim.opt.smartcase = true      -- search specifically for capital letters if used
vim.opt.ttyfast = true        -- fast scrolling
vim.opt.wrap = false          -- no line wrap

vim.opt.mouse = 'a'           -- enable mouse click
vim.opt.shiftwidth = 2        -- autoindent
vim.opt.tabstop = 2           -- number of columns occupied by a tab
vim.opt.colorcolumn = '80'    -- column to highlight for line width
vim.opt.updatetime = 50       -- (ms) time between input end and plugin call
vim.opt.termguicolors = true  -- enable 24-bit true color support
vim.opt.scrolloff = 8         -- number of rows to place before or after the cursor when scrolling

vim.g.mapleader = ' '         -- <leader> character before commands

vim.cmd[[colorscheme catppuccin]]

vim.cmd[[set completeopt+=menuone,noselect,popup]] -- completeion options, see `:h completeopt`

