return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "mbbill/undotree",
    lazy = false,
  },
  {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  },
  { 
    "danymat/neogen", 
    dependencies = "nvim-treesitter/nvim-treesitter", 
    config = true,
    lazy = false,
    -- Uncomment next line if you want to follow only stable versions
    -- version = "*" 
  },
  {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    lazy = false,
  },
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "ellisonleao/carbon-now.nvim",
    lazy = true,
    cmd = "CarbonNow",
    opts = {},
  },  
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
  },
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "tpope/vim-dotenv",
      "MunifTanjim/nui.nvim",
      "nvimtools/none-ls.nvim",
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    keys = {
      { "<leader>ka", ":Laravel artisan<cr>" },
      { "<leader>kr", ":Laravel routes<cr>" },
      { "<leader>km", ":Laravel related<cr>" },
    },
    event = { "VeryLazy" },
    config = true,
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy",
    opts = {},
    config = function(_, opts) require'lsp_signature'.setup(opts) end
  },
}
