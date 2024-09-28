local M = {}

M.cache = { data = {} }
function M.cache.reset()
  M.cache.data = {}
end

return M
