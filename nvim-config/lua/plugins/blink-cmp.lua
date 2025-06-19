return {
  {
    "Saghen/blink.cmp",
    version = '1.*',

    ---@module 'blink.cmp
    ---@type blink.cmp.Config
    opts =   {
      keymap = { preset = 'default' },

      completion = { documentation = { auto_show = false } },

      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
    opts_extend = { "sources.default" }
  },
}
