local M = {}

---@class Config
---@field keywords table<string,string>
---@field save_file string|nil
---@field sign_priority number
---@field signcolumn boolean
---@field numhl boolean
---@field linehl boolean
---@field on_attach fun()|nil
---@field signs SignConfig

---@class SignConfig

---@type Config
---@diagnostic disable-next-line
M.config = {}

---@type Config
local default_config = {
  keywords = { ['@t'] = '☑️ ', ['@w'] = '⚠️ ', ['@f'] = '⛏ ', ['@n'] = ' ' },
  save_file = vim.fn.stdpath('state') .. '/bookmarks.nvim/bookmark',
  sign_priority = 6,
  signcolumn = true,
  numhl = false,
  linehl = false,
  on_attach = nil,
  signs = {
    add = { hl = 'BookMarksAdd', text = '⚑', numhl = 'BookMarksAddNr', linehl = 'BookMarksAddLn' },
    ann = { hl = 'BookMarksAnn', text = '♥', numhl = 'BookMarksAnnNr', linehl = 'BookMarksAnnLn' },
  },
}

function M.build(user_config)
  M.config = vim.tbl_deep_extend('force', default_config, user_config or {})
  return M.config
end

return M
