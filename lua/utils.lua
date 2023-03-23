local u = {}

function u.map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys lazykeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({
    lhs,
    mode = mode,
  }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

function u.unmap(mode, lhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({
    lhs,
    mode = mode,
  }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.del(mode, lhs, opts)
  end
end

u.merge = function(t1, t2)
  for k, v in pairs(t2) do
    if (type(v) == "table" and type(t1[k] or false)) == "table" then
      u.merge(t1[k], t2[k])
    else
      t1[k] = v
    end

    return t1
  end
end

u.mergeVim = function(vim, t2)
  for key, value in pairs(t2) do
    if type(vim[key]) == "function" then
      vim[key](value)
    else
      if type(value) == "table" and type(vim[key] or false) == "table" then
        u.merge(vim[key], t2[key])
      else
        vim[key] = value
      end
    end

    return vim
  end
end

return u
