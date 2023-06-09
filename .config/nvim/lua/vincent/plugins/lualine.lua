-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- configure lualine with modified theme
lualine.setup({
  options = {
    icons_enabled = true,
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = { "filename", "codeium#GetStatusString" },
    lualine_x = { "encoding", "fileformat", "filetype" },
    lualine_y = { "progress" },
    lualine_z = { "location" },
  },
})
