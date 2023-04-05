return {
  plugins = {
    {
      "jay-babu/mason-null-ls.nvim",
      config = function(plugin, opts)
        local mason_null_ls = require("mason-null-ls")
        local null_ls = require "null-ls"

        mason_null_ls.setup(opts) -- run setup
        mason_null_ls.setup_handlers { -- setup custom handlers
          -- prettier = function()
          --   null_ls.register(null_ls.builtins.formatting.prettier.with {
          --     condition = function(utils)
          --       return utils.root_has_file "package.json"
          --         or utils.root_has_file ".prettierrc"
          --         or utils.root_has_file ".prettierrc.json"
          --         or utils.root_has_file ".prettierrc.js"
          --     end,
          --   })
          -- end,
          -- For prettierd:
          -- prettierd = function()
          --   null_ls.register(null_ls.builtins.formatting.prettierd.with({
          --     condition = function(utils)
          --       return utils.root_has_file("package.json") or utils.root_has_file(".prettierrc") or utils.root_has_file(".prettierrc.json") or utils.root_has_file(".prettierrc.js")
          --     end
          --   }))
          -- end,
          -- For eslint_d:
          -- eslint_d = function()
          --   null_ls.register(null_ls.builtins.diagnostics.eslint_d.with({
          --     condition = function(utils)
          --       return utils.root_has_file("package.json") or utils.root_has_file(".eslintrc.json") or utils.root_has_file(".eslintrc.js")
          --     end
          --   }))
          -- end,
          -- For eslint:
          eslint = function()
            null_ls.register(null_ls.builtins.formatting.eslint.with({
              condition = function(utils)
                return utils.root_has_file("package.json") or utils.root_has_file(".eslintrc.json") or utils.root_has_file(".eslintrc.js")
              end
            }))
          end,
        }
      end,
    },
  }
}
