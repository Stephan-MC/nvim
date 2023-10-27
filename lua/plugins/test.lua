return {
  { "nvim-neotest/neotest-plenary" },
  { "theutz/neotest-pest", dependencies = "olimorris/neotest-phpunit" },
  { "olimorris/neotest-phpunit" },
  { "marilari88/neotest-vitest" },

  {
    "nvim-neotest/neotest",
    keys = {
      {
        "<Leader>tl",
        function()
          require("neotest").run().run_last()
        end,
        desc = "Run Last Test",
      },
    },
    opts = {
      adapters = { ["neotest-plenary"] = {}, ["neotest-pest"] = {}, ["neotest-phpunit"] = {}, ["neotest-vitest"] = {} },
    },
  },
}
