local opts = {noremap = true, silent = true}

-- key map for switching splits
vim.api.nvim_set_keymap("t", "<C-h>", "<C-\\><C-n><C-w>h", opts)
vim.api.nvim_set_keymap("t", "<C-j>", "<C-\\><C-n><C-w>j", opts)
vim.api.nvim_set_keymap("t", "<C-k>", "<C-\\><C-n><C-w>k", opts)
vim.api.nvim_set_keymap("t", "<C-l>", "<C-\\><C-n><C-w>l", opts)
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", opts)
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", opts)
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", opts)
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", opts)

-- Use alt + hjkl to resize windows
vim.api.nvim_set_keymap("n", "<M-j>", ":resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-k>", ":resize +2<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-h>", ":vertical resize -2<CR>", opts)
vim.api.nvim_set_keymap("n", "<M-l>", ":vertical resize +2<CR>", opts)

-- Clear highlight after search
vim.api.nvim_set_keymap("n", "<leader><Space>", ":noh<CR>", opts)

-- TAB in general mode will move to text buffer
vim.api.nvim_set_keymap("n", "<TAB>", ":bnext<CR>", opts)
vim.api.nvim_set_keymap("n", "<S-TAB>", ":bprevious<CR>", opts)

-- Move selected line / block of text in visual mode
-- shift + k to move up
-- shift + j to move down
vim.api.nvim_set_keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
vim.api.nvim_set_keymap("x", "J", ":move '>+1<CR>gv-gv", opts)

-- Alternate way to save and quit
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-q>", ":wq!<CR>", opts)
-- Better indenting
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)

-- keymap for opening nvim config file
vim.api.nvim_set_keymap("n", "<leader>ie", ":vsp $MYVIMRC<CR>", opts)

-- Terminal keymap
vim.cmd [[au BufEnter * if &buftype == 'terminal' | :startinsert | endif]]
vim.api.nvim_set_keymap("n", "<leader>st", ":split term://bash | resize 20<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>vt", ":vsplit term://bash<CR>", opts)
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-n>", opts)

-- Startify
vim.api.nvim_set_keymap("n", "<leader>ss", ":Startify<CR>", opts)
-- :SLoad    load a session
-- :SSave    save a session
-- :SDelete  delete a session
-- :SClose   close current session

-- Zoom Tooggle
vim.api.nvim_set_keymap("n", "<leader>z", ":ZoomToggle<CR>", opts)

-- Nvim Tree
-- - : go to parent directory
-- ctrl+] : go inside current directory
-- a : create file/directory (for directory add trailing slash "/")
-- r : rename
-- d : delete
-- c : copy to clipboard
-- x : cut to clipboard
-- p : paste
-- s : open file/directory in file explorer
-- g? : view all the shortcuts
vim.api.nvim_set_keymap("n", "<leader>1", ":NvimTreeToggle<CR>", opts)

-- Kommentary
-- vim.api.n-- vim.set_keymap("n", "gcc", "<Plug>kommentary_line_default", {})
-- vim.api.n-- vim.set_keymap("n", "gc", "<Plug>kommentary_motion_default", {})
-- vim.api.n-- vim.set_keymap("v", "gc", "<Plug>kommentary_visual_default<C-c>", {})

-- Formatter
-- :Format format selected
-- :FormatWrite format and save file

-- LSP
-- mapping is set in nvim-lspconfig.lua
-- See `:help vim.lsp.*` for documentation on any of the below functions
-- buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- buf_set_keymap('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
-- buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
-- buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
-- buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fi",
  "<cmd>Telescope find_files find_command=rg,--no-ignore,--hidden,--files prompt_prefix=🔍<CR>",
  opts
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fg",
  "<cmd>Telescope live_grep find_command=rg,--no-ignore,--hidden,--files prompt_prefix=🔍<CR>",
  opts
)
vim.api.nvim_set_keymap("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fr", "<cmd>Telescope neoclip<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope command_history<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>fs", "<cmd>Telescope search_history<CR>", opts)
-- Ctrl + P : Open projects

-- Vim Test
vim.api.nvim_set_keymap("n", "<leader>tn", ":TestNearest<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tf", ":TestFile<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ts", ":TestSuite<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tl", ":TestLast<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tv", ":TestVisit<CR>", opts)

-- Vimspector
-- F5	:VimspectorContinue	When debugging, continue. Otherwise start debugging.
-- F3	:VimspectorStop	Stop debugging.
-- F4	:VimspectorRestart	Restart debugging with the same configuration.
-- F6	:VimspectorPause	Pause debuggee.
-- F9	:VimspectorToggleBreakpoint	Toggle line breakpoint on the current line.
-- <leader>F9	:VimspectorToggleConditionalBreakpoint	Toggle conditional line breakpoint or logpoint on the current line.
-- F8	:VimspectorAddFunctionBreakpoint	Add a function breakpoint for the expression under cursor
-- <leader>F8	:VimspectorRunToCursor	Run to Cursor
-- F10	:VimspectorStepOver	Step Over
-- F11	:VimspectorStepInto	Step Into
-- F12	:VimspectorStepOut	Step out of current function scope
vim.api.nvim_set_keymap("n", "<leader>vl", ":call vimspector#Launch()<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>vr", ":VimspectorReset<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>ve", ":VimspectorEval", opts)
vim.api.nvim_set_keymap("n", "<leader>vw", ":VimspectorWatch", opts)
vim.api.nvim_set_keymap("n", "<leader>vo", ":VimspectorShowOutput", opts)

-- Quickfix
vim.api.nvim_set_keymap("n", "<leader>gr", ":GrepperRg", opts)
-- copen : open quickfix
-- tab/shift+tab : select/de-select item from quickfix list
-- zn : create new quickfix list from selected item
-- cdo s//test/ : perform replace operation on quickfix list

-- vim-floaterm keymap
vim.api.nvim_set_keymap("n", "<leader>to", ":FloatermNew<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>to", "<C-\\><C-n>:FloatermNew<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tp", ":FloatermPrev<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>tp", "<C-\\><C-n>:FloatermPrev<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tn", ":FloatermNext<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>tn", "<C-\\><C-n>:FloatermNext<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tt", ":FloatermToggle<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>tt", "<C-\\><C-n>:FloatermToggle<CR>", opts)
vim.api.nvim_set_keymap("n", "<leader>tk", ":FloatermKill<CR>", opts)
vim.api.nvim_set_keymap("t", "<leader>tk", "<C-\\><C-n>:FloatermKill<CR>", opts)
