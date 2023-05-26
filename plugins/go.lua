return {
  "ray-x/go.nvim",
  dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local lsp_utils = require("astronvim.utils.lsp")
    require("go").setup({
      lsp_cfg = {
        capabilities = lsp_utils.capabilities,
        -- other setups
      },
    })
  end,
  -- event = {"CmdlineEnter"},
  ft = {"go", 'gomod'},
  build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
}
