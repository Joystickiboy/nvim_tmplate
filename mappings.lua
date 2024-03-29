-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)

local cmp = require'cmp'
local neogen = require'neogen'

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<F4>"] = { vim.cmd.UndotreeToggle, desc = "Toggle Undo Tree" },
    ["<leader>gg"] = { neogen.generate, desc = "Create documentation" },
    ["<leader>ga"] = { vim.cmd.LazyGit, desc = "Toggle LazyGit" },
    ["<tab>"] = { vim.cmd.bnext, desc = "Next buffer" },
    ["<S-tab>"] = { vim.cmd.bprevious, desc = "Previous buffer" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-x>"] = { cmp.mapping.complete() }
  },
}
