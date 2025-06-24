require("config.lazy")

vim.notify = function(msg, level, opts)
  -- Only show if level is WARN(2) or ERROR(3)
  -- Levels: ERROR=3, WARN=2, INFO=1, DEBUG=0
  local WARN = vim.log.levels.WARN

  if level == nil or level >= WARN then
    -- Show warning and error normally
    vim.api.nvim_echo({{msg}}, true, {})
  else
    -- Ignore info/debug messages silently
    -- or you could log them somewhere if you want
  end
end

vim.o.expandtab=true
vim.o.tabstop=2
vim.o.shiftwidth=2
vim.o.autoindent=true
vim.o.smartindent=true
vim.o.completeopt = "menuone,noselect,noinsert"
vim.api.nvim_set_option('updatetime', 300)

vim.lsp.config("*", { capabilities = require("blink.cmp").get_lsp_capabilities() })

vim.lsp.enable('lua_ls')
