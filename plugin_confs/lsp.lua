local M = {}

M.setup_lsp = function(attach, capabilities)
  local lsp_installer = require("nvim-lsp-installer")

  lsp_installer.settings {
      automatic_installation = true,
      ui = {
         icons = {
            server_installed = "﫟" ,
            server_pending = "",
            server_uninstalled = "✗",
         },
      },
   }

   lsp_installer.on_server_ready(function(server)
      local opts = {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
         settings = {},
         languageFeatures = {},
      }

      if server.name == "tsserver" then
        -- disable diagnostics for tsserver
        opts.on_attach = function(client, bufnr)
          -- client.resolved_capabilities.diagnostics = false
          client.resolved_capabilities.document_formatting = false
          client.resolved_capabilities.document_range_formatting = false

          attach(client, bufnr)
        end
      end

      server:setup(opts)
      vim.cmd [[ do User LspAttachBuffers ]]
   end)
end

return M
