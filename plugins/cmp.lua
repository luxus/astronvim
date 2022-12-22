local cmp = require "cmp"
local luasnip = require "luasnip"
return {
  sources = cmp.config.sources {
    { name = "nvim_lsp", priority = 1000 },
    { name = "luasnip", priority = 750 },
    { name = "pandoc_references", priority = 725 },
    { name = "latex_symbols", priority = 700 },
    { name = "emoji", priority = 700 },
    { name = "calc", priority = 650 },
    { name = "path", priority = 500 },
    { name = "buffer", priority = 250 },
  },
  mapping = {
    ["<Tab>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
  },
}
