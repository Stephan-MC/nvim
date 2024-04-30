return {
  {
    "barrett-ruth/import-cost.nvim",
    enabled = false,
    -- if on windows
    -- build = 'pwsh install.ps1 yarn',
    build = "sh install.sh bun",
    ft = { "typescript", "javascript", "typescriptreact", "javascriptreact" },
    lazy = true,
    config = true,
  },
}
