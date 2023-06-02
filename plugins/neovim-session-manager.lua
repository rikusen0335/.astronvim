return {
  "Shatur/neovim-session-manager",
  enabled = false,
  lazy = false,
  opts = function(_, config)
    config.autoload_mode = require("session_manager.config").AutoloadMode.CurrentDir

    return config
  end,
}
