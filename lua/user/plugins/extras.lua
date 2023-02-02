return {
  require "user.plugins.extras.lang.go",
  require "user.plugins.extras.lang.rust",
  require "user.plugins.extras.lang.nix",
  -- require "user.plugins.extras.lang.typescript",
  -- require "user.plugins.extras.lang.tex",
  require "user.plugins.extras.ui.ministarter",
  require "user.plugins.extras.ui.ccc",
  require "user.plugins.extras.ui.drop",
  require "user.plugins.extras.ui.minianimate",
  require "user.plugins.extras.ui.noice",
  require "user.plugins.extras.ui.zen-mode",
  -- require "user.plugins.extras.ui.modicator",
  -- require "user.plugins.extras.ui.scrollbar",
  require "user.plugins.extras.editor.minicomment",
  require "user.plugins.extras.editor.grapple+portal",
  require "user.plugins.extras.editor.copilot",
  -- require "user.plugins.extras.editor.textobjects",
  require "user.plugins.extras.editor.miniai",
  -- require "user.plugins.extras.editor.copilot-cmp",
  require "user.plugins.extras.editor.cutlass",
  require "user.plugins.extras.editor.neogen",
  -- require "user.plugins.extras.editor.bqf",
  require "user.plugins.extras.tools.oil",
  -- require "user.plugins.extras.tools.refactoring",
  -- require "user.plugins.extras.tools.octo",
  require "user.plugins.extras.tools.sg",
  require "user.plugins.extras.tools.spectre",
  { "andweeb/presence.nvim", event = "VeryLazy" },

  { "wakatime/vim-wakatime", init = function() table.insert(astronvim.file_plugins, "vim-wakatime") end },
}
