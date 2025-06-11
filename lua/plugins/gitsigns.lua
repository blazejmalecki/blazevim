return {
  "lewis6991/gitsigns.nvim",
  opts = {
    on_attach = function(buffer)
      vim.keymap.set({ "n" }, "<leader>gb", function()
        require("gitsigns").blame()
      end, { buffer = buffer, desc = "Git blame buffer" })
    end,
  },
}
