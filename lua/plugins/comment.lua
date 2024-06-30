return {
  ---------- Code Plugins --------------
  'numToStr/Comment.nvim',   -- 注释
  "folke/todo-comments.nvim", --TEST: todo-comments
  'lewis6991/gitsigns.nvim', --  gitsigns
  "windwp/nvim-autopairs",   -- 自动补全括号
  -- 增强 neovim 中的宏的功能
  -- q：开始/结束录制宏
  -- Q：执行当前选择的宏
  -- <A-q>：切换宏槽位
  -- cq：编辑当前槽位的宏
  -- yq：复制当前槽位的宏
  {
    "chrisgrieser/nvim-recorder",
    lazy = true,
    keys = { "q", "Q", "<A-q>", "cq", "yq" },
    config = function()
      require("recorder").setup({
        slots = { "a", "b", "c" },
        mapping = {
          startStopRecording = "q",
          playMacro = "Q",
          switchSlot = "<A-q>",
          editMacro = "cq",
          yankMacro = "yq",
          -- addBreakPoint = "###",
        },
      })
    end,
  },
}
