return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
    },
    opts = {
      format = { timeout_ms = 2000 },
      capabilities = {
        textDocument = {

          foldingRange = {
            dynamicRegistration = false,
            lineFoldingOnly = true,
          },
        },
      },
      inlay_hints = {
        enabled = false,
      },
      servers = {

        ansiblels = {
          settings = {
            ansible = {
              validation = {
                lint = {
                  enabled = true,
                },
              },
            },
          },
        },

        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },

        jsonls = {},

        kotlin_language_server = {},

        pylsp = {

          settings = {
            pylsp = {
              configurationSources = { "flake8" },
              plugins = {
                pycodestyle = {
                  enabled = false,
                },
                mccabe = {
                  enabled = false,
                },
                pyflakes = {
                  enabled = false,
                },
                autopep8 = {
                  enabled = false,
                },
                yapf = {
                  enabled = true,
                },
                flake8 = {
                  enabled = false,
                },
                pyls_isort = {
                  enabled = true,
                },
                black = {
                  enabled = true,
                },
                jedi_completion = {
                  enabled = true,
                  environment = vim.g.PYTHONPATH,
                },
                mypy = {
                  enabled = false,
                  environment = vim.g.PYTHONPATH,
                },
              },
            },
          },
        },

        lua_ls = {
          settings = {
            Lua = {
              trace = {
                server = "verbose",
              },
              runtime = {
                version = "LuaJIT",
              },
              diagnostics = {
                globals = { "vim", "require" },
              },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false, -- so that it doesn't ask shit about luassert & luv
              },
              format = {
                enable = false,
                -- NOTE: the value should be STRING!!
                defaultConfig = {
                  indent_style = "space",
                  indent_size = "2",
                },
              },
              telemetry = {
                enable = false,
              },
            },
          },
        },

        tsserver = {},

        yamlls = {
          settings = {
            yaml = {
              format = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },
}
