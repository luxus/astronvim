return {
  {
    "JManch/sunset.nvim",
    priority = 1000,
    -- enabled = false,
    lazy = false,
    dependencies = {
      -- tokyonight
      -- {
      --   "folke/tokyonight.nvim",
      --   opts = { style = "moon" },
      -- },
      -- { "ray-x/starry.nvim" },
      -- { "echasnovski/mini.base16" },
      "sainnhe/everforest" ,
      -- "AlexvZyl/nordic.nvim",
      -- {"AstroNvim/astrotheme",
      --   -- enabled = false,
      --   -- opts = {
      --   --   terminal_colors = false,
      --   --   palette = {
      --   --     astrodark = {
      --   --       -- bg = "#000000",
      --   --       purple = "#f3ddb7",
      --   --       -- red = "#A6FCFF",
      --   --     }
      --   --   },
      --   --   highlights = {
      --   --     astrodark = {
      --   --       Comment = { italic = true },
      --   --       -- CursorLine = { bg = "#233228" },
      --   --     }
      --   --   },
      --   -- },
      -- },

      -- catppuccin
      -- {
      --   "catppuccin/nvim",
      --   name = "catppuccin",
      --
      -- },

      -- {
      --   "EdenEast/nightfox.nvim",
      --   opts = {
      --     options = {
      --       dim_inactive = true,
      --       styles = { comments = "italic" },
      --       module_default = false,
      --       modules = {
      --         aerial = true,
      --         cmp = true,
      --         ["dap-ui"] = true,
      --         diagnostic = true,
      --         gitsigns = true,
      --         hop = true,
      --         native_lsp = true,
      --         neotree = true,
      --         notify = true,
      --         telescope = true,
      --         treesitter = true,
      --         tsrainbow = true,
      --         noice = true,
      --         whichkey = true,
      --       },
      --     },
      --     groups = { all = { NormalFloat = { link = "Normal" } } },
      --   },
      -- },
    },
    config = function()
      require("sunset").setup {
        latitude = 48.57,
        longitude = 8.51,
        day_callback = function() vim.cmd "set background=light" end,
        night_callback = function() vim.cmd "set background=dark" end,
        -- night_callback = function() vim.cmd "colorscheme middlenight_blue" end,
      }
    end,
  },
}
