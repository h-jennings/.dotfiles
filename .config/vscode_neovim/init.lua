local Plug = vim.fn["plug#"]

vim.call("plug#begin", "~/.vim/plugged")

Plug("tpope/vim-surround")

vim.call("plug#end")

-- General
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.smartcase = true -- smart case
vim.opt.updatetime = 300 -- faster completion (4000ms default)
vim.opt.timeoutlen = 1000 -- time to wait for a mapped sequence to complete (in milliseconds)
local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "J", "5j", opts)
keymap("n", "K", "5k", opts)
keymap("n", "<leader>/", ":nohlsearch<CR>", opts) -- clear highlights

-- File actions
keymap("n", "<leader>w", "<Cmd>call VSCodeNotify('workbench.action.files.save')<CR>", opts)
keymap("n", "<leader>q", "<Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", opts)
keymap("n", "<leader>cg", "<Cmd>call VSCodeNotify('workbench.action.closeEditorsInGroup')<CR>", opts)
keymap("n", "<leader>to", "<Cmd>call VSCodeNotify('workbench.action.closeOtherEditors')<CR>", opts)

-- Code actions
keymap("n", "gr", "<Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>", opts)
keymap("n", "gy", "<Cmd>call VSCodeNotify('editor.action.goToTypeDefinition')<CR>", opts)
keymap("n", "gi", "<Cmd>call VSCodeNotify('editor.action.goToImplementation')<CR>", opts)
keymap("n", "gH", "<Cmd>call VSCodeNotify('editor.action.showDefinitionPreviewHover')<CR>", opts)
keymap("n", "<leader>ca", "<Cmd>call VSCodeNotify('editor.action.quickFix')<CR>", opts) -- code action quick fix
keymap("n", "[d", "<Cmd>call VSCodeNotify('editor.action.marker.next')<CR>", opts) -- next diagnostic
keymap("n", "]d", "<Cmd>call VSCodeNotify('editor.action.marker.prev')<CR>", opts) -- previous diagnostic
keymap("n", "<leader>rn", "<Cmd>call VSCodeNotify('editor.action.rename')<CR>", opts) -- rename symbol
keymap("n", "<leader>fw", "<Cmd>call VSCodeNotify('actions.find')<CR>", opts)

-- File Navigation
keymap("n", "<leader>ff", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>", opts)
keymap("n", "<leader>P", "<Cmd>call VSCodeNotify('workbench.action.showCommands')<CR>", opts)
keymap(
	"n",
	"<leader>o",
	"<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>",
	opts
)
keymap("n", "<leader>O", "<Cmd>call VSCodeNotify('workbench.action.closeEditorsInOtherGroups')<CR>", opts)
keymap("n", "<leader>F", "<Cmd>call VSCodeNotify('workbench.action.findInFiles')<CR>", opts)
keymap("n", "<leader>pfw", "<Cmd>call VSCodeNotify('workbench.action.findInFiles', { 'query': expand('<cword>')})<CR>", opts)

-- UI
keymap("n", "-", "<Cmd>call VSCodeNotify('revealInExplorer')<CR>", opts)
keymap("n", "<leader>b", "<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>", opts)
keymap("n", "<leader>B", "<Cmd>call VSCodeNotify('workbench.action.toggleActivityBarVisibility')<CR>", opts)
keymap("n", "<leader>`", "<Cmd>call VSCodeNotify('workbench.action.terminal.toggleTerminal')<CR>", opts)
keymap("n", "<leader>cl", "<Cmd>call VSCodeNotify('workbench.action.toggleCenteredLayout')<CR>", opts)
keymap("n", "<leader>tz", "<Cmd>call VSCodeNotify('workbench.action.toggleZenMode')<CR>", opts)


-- Debugger
keymap("n", "<leader>ds", "<Cmd>call VSCodeNotify('workbench.action.debug.selectandstart')<CR>", opts)
keymap("n", "<leader>dr", "<Cmd>call VSCodeNotify('workbench.action.debug.restart')<CR>", opts)
keymap("n", "<leader>df", "<Cmd>call VSCodeNotify('workbench.debug.action.focusRepl')<CR>", opts)
keymap("n", "<leader>D", "<Cmd>call VSCodeNotify('workbench.action.debug.disconnect')<CR>", opts)
keymap("n", "<leader>tb", "<Cmd>call VSCodeNotify('editor.debug.action.toggleBreakpoint')<CR>", opts)
keymap("n", "<leader>tl", "<Cmd>call VSCodeNotify('editor.debug.action.addLogPoint')<CR>", opts)
keymap("n", "gH", "<Cmd>call VSCodeNotify('editor.debug.action.showDebugHover')<CR>", opts)

-- Commenting
keymap("n", "gc", "<Plug>VSCodeCommentary", opts)
keymap("x", "gc", "<Plug>VSCodeCommentary", opts)
keymap("o", "gc", "<Plug>VSCodeCommentary", opts)
keymap("n", "gcc", "<Plug>VSCodeCommentaryLine", opts)

-- Copilot
keymap("n", "<leader>cp", "<Cmd>call VSCodeNotify('github.copilot.generate')<CR>", opts)
