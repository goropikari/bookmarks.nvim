local M = {}

---@class Cache
---@field data table

---@type Cache
M.cache = { data = {} }
function M.reset()
  M.cache.data = {}
end

return M
