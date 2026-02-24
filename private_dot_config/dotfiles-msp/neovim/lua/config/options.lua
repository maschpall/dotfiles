-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua

vim.wo.number = true -- Make line numbers default (default:false)
vim.o.relativenumber = true -- Set relative numbered lines (default:false)
vim.o.clipboard = "unnamedplus" -- Sync clipboard between OS and Neovim. (default: '')
vim.o.wrap = false -- Display lines as one long line (default: true)
vim.o.linebreak = true -- Companion to wrap, don't split words (default:false)
vim.o.mouse = "a" -- Enable mouse mode (default:'')
vim.o.autoindent = true -- Copy indent from current line when starting new one (default: true)
vim.o.ignorecase = true -- Case-insensitive searching UNLESS \C or capital in search (default: false)
vim.o.smartcase = true -- Smart case (default: false)
vim.o.updatetime = 250 -- Decrease update time
vim.o.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.o.backup = false -- creates a backup file
vim.o.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.o.completeopt = "menuone,noselect" -- Set completeopt to have a better completion experience
vim.o.shiftwidth = 4 -- The number of spaces inserted for each indentation (default: 8)
vim.o.tabstop = 4 -- Insert n spaces for a tab (default: 8)
vim.o.softtabstop = 4 -- Number of spaces that a tab counts for while performing editing operations
vim.o.expandtab = true -- Convert tabs to spaces (default: false)
vim.o.scrolloff = 4 -- Minimal number of scren lines to keep above and below the cursor
vim.o.sidescrolloff = 8 -- Minimal number of screen columns either side of the cursor if wrap is false
vim.o.cursorline = false -- Highlight the current line
vim.o.splitbelow = true -- Force all horizontal  splits to go below the current window
vim.o.splitright = true -- Force all vertical splits to go to the right of the current window
vim.o.hlsearch = false -- Set highlight on search (default: true)
vim.o.showmode = false -- We don't need to see things like -- INSERT -- anymore
vim.opt.termguicolors = true -- Set termguicolors to enable highlights groups
vim.o.whichwrap = "bs<>[]hl" --Which 'horizontal' keys are allowed to travel to prev/next line
vim.o.numberwidth = 4 -- Set number column with to 4 (default 4)
vim.o.swapfile = false -- Creates a swap file (default: true)
vim.o.smartindent = true -- Make indenting smart again (default: fasle)
vim.o.showtabline = 2 -- Always show tabs (default: 1)
vim.o.backspace = "indent,eol,start" -- Allow backspace on (default: 'indent,eol,start')
vim.o.pumheight = 10 -- Pop up menu height (default: 0)
vim.o.conceallevel = 0 -- So that '' is visible in markdown files (default: 1)
vim.wo.signcolumn = "yes" -- Keep signcolumn on by default
vim.o.fileencoding = "utf-8" -- Endocing written to a file (default: 'utf-8')
vim.o.cmdheight = 1 -- More space in the Neovim command line for displaying messages (default: 1)
vim.o.autoindent = true -- Copy indent from current line when starting a new one
vim.opt.shortmess:append("c") -- don't give |ins-completion-menu| messages
vim.opt.iskeyword:append("-") -- Hyphaneated words recognized by searches
vim.opt.formatoptions:remove({ "c", "r", "o" }) -- Don't insert the current comment leader automatically for auto-wrapping comments using 'textwidth', hitting <Enter> in insert mode, or hitting 'o' or 'O' in normal mode.
vim.opt.runtimepath:remove("/usr/share/vim/vimfiles") -- Separate vim plugins form Neovim- Add any additional options here
