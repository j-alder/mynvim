return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "saghen/blink.cmp" },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      
      -- TypeScript language server
      vim.lsp.config("tsserver", {
        capabilities = capabilities
      })

      local haskell_root_markers = { "cabal.project", "stack.yaml", "package.yaml", "hie.yaml", ".git" }

      local function get_root(bufnr)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        if fname == "" then
          return vim.loop.cwd()
        end
        return vim.fs.root(fname, haskell_root_markers) or vim.fs.dirname(fname)
      end

      local function start_haskell_lsp(bufnr)
        -- If a client is already attached, don't start another.
        for _, client in ipairs(vim.lsp.get_clients({ bufnr = bufnr })) do
          if client.name == "static_ls" or client.name == "hls" then
            return
          end
        end

        local root_dir = get_root(bufnr)
        -- only use static-ls when in specific directories
        local use_static = root_dir:find("mercury-web-backend", 1, true) ~= nil

        if vim.fn.executable("static-ls") == 1 and use_static then
          vim.lsp.start({
            name = "static-ls",
            cmd = { "static-ls" },
            root_dir = root_dir,
            capabilities = capabilities,
          }, { bufnr = bufnr })
        else
          local hls_cmd
          if vim.fn.executable("haskell-language-server-wrapper") == 1 then
            hls_cmd = { "haskell-language-server-wrapper", "--lsp" }
          elseif vim.fn.executable("haskell-language-server") == 1 then
            hls_cmd = { "haskell-language-server", "--lsp" }
          else 
            return
          end

          vim.lsp.start({
            name = "hls",
            cmd = hls_cmd,
            root_dir = root_dir,
            capabilities = capabilities,

            settings = {
              haskell = {
                formattingProvider = "ormolu",
                cabalFormattingProvider = "cabal-fmt",
              },
            },
          }, { bufnr = bufnr })
        end
      end

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "haskell", "lhaskell" },
        callback = function(args)
          start_haskell_lsp(args.buf)
        end,
      })
    end,
  },
}

