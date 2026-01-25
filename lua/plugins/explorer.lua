return {
  "stevearc/oil.nvim",
  dependencies = {
    "nvim-mini/mini.icons",
  },
  opts = {
		view_options = {
			show_hidden = true,
		},
	},
  keys = {
    {
      "<leader>e",
      function()
        require("oil").open()
      end,
      desc = "Explorer",
    },
  },
}
