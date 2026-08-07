-- ~/.config/nvim/lua/plugins/lsp.lua

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      -- 1. Initialize Mason to pull language binaries
      require("mason").setup({
        ui = { border = "rounded" },
      })

      -- 2. Define target language servers
      local servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            },
          },
        },
        pyright = {},
        ts_ls = {},
      }

      -- Install missing binaries seamlessly through the bridge
      require("mason-lspconfig").setup({
        ensure_installed = vim.tbl_keys(servers),
      })

      -- 3. Configure keymaps natively via autocommands on LSP attach
      vim.api.nvim_create_autocmd("LspAttach", {
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          local opts = { buffer = ev.buf }
          
          vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
          vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
          vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
          vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
          vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
        end,
      })

      -- 4. Native configuration handoff using Neovim 0.11+ APIs
      for server_name, user_config in pairs(servers) do
        -- vim.lsp.config safely updates and merges your settings with 
        -- nvim-lspconfig's provided defaults.
        vim.lsp.config(server_name, user_config)
        
        -- Globally active the server engine
        vim.lsp.enable(server_name)
      end
    end,
  },
}
