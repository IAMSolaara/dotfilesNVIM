return {
  --   {
  --     "someone-stole-my-name/yaml-companion.nvim",
  --     init = function(plugin)
  --       require("telescope").load_extension("yaml_schema")
  --     end,
  --     opts = {
  --       schemas = {
  --         kubernetes = "*.yaml",
  --         ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
  --         ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
  --         ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
  --         ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
  --         ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
  --         ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
  --         ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
  --         ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
  --         ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
  --         ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
  --         ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
  --         ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
  --       },
  --     },
  --   },

  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        yamlls = {
          schemas = {
            kubernetes = "*.yaml",
            ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
            ["http://json.schemastore.org/github-action"] = ".github/action.{yml,yaml}",
            ["http://json.schemastore.org/ansible-stable-2.9"] = "roles/tasks/*.{yml,yaml}",
            ["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
            ["http://json.schemastore.org/kustomization"] = "kustomization.{yml,yaml}",
            ["http://json.schemastore.org/ansible-playbook"] = "*play*.{yml,yaml}",
            ["http://json.schemastore.org/chart"] = "Chart.{yml,yaml}",
            ["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
            ["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
            ["https://raw.githubusercontent.com/OAI/OpenAPI-Specification/main/schemas/v3.1/schema.json"] = "*api*.{yml,yaml}",
            ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
            ["https://raw.githubusercontent.com/argoproj/argo-workflows/master/api/jsonschema/schema.json"] = "*flow*.{yml,yaml}",
          },
        },
      },
    },
  },
  { "budimanjojo/k8s-snippets" },
  {
    "garymjr/nvim-snippets",
    opts = {
      friendly_snippets = true,
    },
    dependencies = { "rafamadriz/friendly-snippets", "budimanjojo/k8s-snippets" },
  },
}
