-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
  return
end

local keyConfig = {
  edit = "<CR>",
  vsplit = "<C-v>",
  tabe = "<C-t>",
  quit = "<ESC>",
}

saga.setup({
  -- keybinds for navigation in lspsaga window
  scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
  -- use enter to open file with definition preview
  definition = { keys = keyConfig },
  finder = { winopt = { number = true }, keys = keyConfig },
  ui = {
    colors = {
      normal_bg = "#022746",
    },
  },
})
