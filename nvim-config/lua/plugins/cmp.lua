print("cmp.lua override LOADED")
return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(),
    })
    opts.sources = {
      { name = "nvim_lsp" },
    }
  end,
}
