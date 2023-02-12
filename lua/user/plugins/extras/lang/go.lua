return {
  -- Golang support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then vim.list_extend(opts.ensure_installed, { "go" }) end
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "gomodifytags", "gofumpt", "iferr", "impl", "goimports" })
      end
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then vim.list_extend(opts.ensure_installed, { "gopls" }) end
    end,
  },
  {
    "leoluz/nvim-dap-go",
    config = true,
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
      {
        "jay-babu/mason-nvim-dap.nvim",
        opts = function(_, opts)
          if type(opts.ensure_installed) == "table" then vim.list_extend(opts.ensure_installed, { "delve" }) end
        end,
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    opts = function() return { server = require("core.utils.lsp").config "gopls" } end,
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = true,
  },
}
