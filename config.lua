-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

lvim.plugins = {
  {
    'xeluxee/competitest.nvim',
    dependencies = 'MunifTanjim/nui.nvim',
    config = function() require('competitest').setup({
      testcases_single_file_format = "$(FNOEXT).testcases",
      testcases_input_file_format = "in$(TCNUM).txt",
      testcases_output_file_format = "ans$(TCNUM).txt",
    }) end,
  },
  {
    "CRAG666/code_runner.nvim", config = true
  },
}

-- force quit
lvim.keys.normal_mode["<c-w>"] = ":q!<cr>"

-- force save file
lvim.keys.normal_mode["<c-s>"] = ":w!<cr>"
lvim.keys.insert_mode["<c-s>"] = "<esc>:w!<cr>"

-- copy all content
lvim.keys.normal_mode["<c-a>"] = ":%y+<cr>"

-- delete all content
lvim.keys.normal_mode["<c-d>"] = ":%d+<cr>"

-- split view
lvim.keys.normal_mode["\\"] = ":split<cr>"
lvim.keys.normal_mode["|"] = ":vsplit<cr>"

-- close buffer
lvim.keys.normal_mode["<c-x>"] = ":BufferKill<cr>"

-- [competitest] plugin
lvim.keys.normal_mode["<F5>"] = ":CompetiTest add_testcase<cr>"
lvim.keys.normal_mode["<F6>"] = ":CompetiTest edit_testcase "
lvim.keys.normal_mode["<F7>"] = ":CompetiTest delete_testcase "
lvim.keys.normal_mode["<F8>"] = ":CompetiTest run_no_compile<cr>"
lvim.keys.normal_mode["<F9>"] = ":CompetiTest run<cr>"
lvim.keys.normal_mode["<F10>"] = ":CompetiTest show_ui<cr>"

-- [code_runner] plugin
lvim.keys.normal_mode["<F33>"] = ":RunFile<cr>"
