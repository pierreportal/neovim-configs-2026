return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
    ft = { 'rust' },
    config = function()
      vim.g.rustaceanvim = {
        server = {
          on_attach = function(client, bufnr)
            -- Custom keybindings for Rust
            vim.keymap.set('n', '<leader>ca', function()
              vim.cmd.RustLsp('codeAction')
            end, { buffer = bufnr, desc = 'Rust Code Action' })
            
            vim.keymap.set('n', '<leader>rd', function()
              vim.cmd.RustLsp('debuggables')
            end, { buffer = bufnr, desc = 'Rust Debuggables' })
            
            vim.keymap.set('n', '<leader>rr', function()
              vim.cmd.RustLsp('runnables')
            end, { buffer = bufnr, desc = 'Rust Runnables' })
            
            vim.keymap.set('n', 'K', function()
              vim.cmd.RustLsp({ 'hover', 'actions' })
            end, { buffer = bufnr, desc = 'Hover actions' })
          end,
          default_settings = {
            ['rust-analyzer'] = {
              cargo = {
                allFeatures = true,
                loadOutDirsFromCheck = true,
                buildScripts = {
                  enable = true,
                },
              },
              checkOnSave = {
                command = 'clippy',
              },
              procMacro = {
                enable = true,
              },
              inlayHints = {
                lifetimeElisionHints = {
                  enable = 'always',
                },
              },
            },
          },
        },
      }
    end,
  },
  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    config = function()
      require('crates').setup()
    end,
  },
}