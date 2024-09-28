local M = {}

M.cache = { data = {} }
function M.reset()
  M.cache.data = {}
end

return M
