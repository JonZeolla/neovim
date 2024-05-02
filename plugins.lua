-- This essentially re-introduces a design pattern that NvChad has documented as "undesirable" on https://nvchad.com/docs/config/plugins but is supported by
-- lazy.nvim
--
-- In the future consider refactoring this to be dynamic.
-- I didn't do this initially because I found lua doesn't have great options for filesystem operations; LuaFileSystem hasn't had a release in 3 years as of
-- writing this, if I did install that, luarocks (the package manager) doesn't support upgrading (see the below issue open since 2011), and native options just
-- end up shelling out to ls or find 🤮
--
-- References:
-- - https://luarocks.org/modules/hisham/luafilesystem
-- - https://github.com/luarocks/luarocks/issues/22

local ale = require("custom.plugins.ale")
local copilot = require("custom.plugins.copilot")
local copilot_chat = require("custom.plugins.copilot-chat")
local copilot_cmp = require("custom.plugins.copilot-cmp")
local dap = require("custom.plugins.dap")
local dap_python = require("custom.plugins.dap-python")
local dap_ui = require("custom.plugins.dap-ui")
local lspconfig = require("custom.plugins.lspconfig")
local mason = require("custom.plugins.mason")
local nvim_cmp = require("custom.plugins.nvim-cmp")
local nvim_nio = require("custom.plugins.nvim-nio")
local treesitter = require("custom.plugins.treesitter")
local venv_selector = require("custom.plugins.venv-selector")

local plugins = {
  ale,
  copilot,
  copilot_chat,
  copilot_cmp,
  dap,
  dap_python,
  dap_ui,
  lspconfig,
  mason,
  nvim_cmp,
  nvim_nio,
  treesitter,
  venv_selector,
}

return plugins
