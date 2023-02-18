local prefix = "gz"
return {

  { "machakann/vim-sandwich", enabled = false },
  -- surround text
  {
    "echasnovski/mini.surround",
    init = function()
      table.insert(astronvim.file_plugins, "mini.surround")
      require("which-key").register({ [prefix] = { name = "Surround" } }, { mode = "n" })
    end,
    opts = {
      mappings = {
        add = prefix .. "a", -- Add surrounding in Normal and Visual modes
        delete = prefix .. "d", -- Delete surrounding
        find = prefix .. "f", -- Find surrounding (to the right)
        find_left = prefix .. "F", -- Find surrounding (to the left)
        highlight = prefix .. "h", -- Highlight surrounding
        replace = prefix .. "r", -- Replace surrounding
        update_n_lines = prefix .. "n", -- Update `n_lines`
      },
    },
    config = function(_, opts)
      -- use gz mappings instead of s to prevent conflict with leap
      require("mini.surround").setup(opts)
    end,
  },
}
