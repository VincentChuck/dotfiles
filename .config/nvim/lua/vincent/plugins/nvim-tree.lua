-- import nvim-tree plugin safely
local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- change color for arrows in tree to light blue
vim.cmd([[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

-- configure nvim-tree
nvimtree.setup({
  view = {
    number = true,
    relativenumber = true,
  },
  modified = {
    enable = true,
    show_on_dirs = true,
    show_on_open_dirs = true,
  },
  tab = {
    sync = {
      open = true,
      close = true,
    },
  },
  hijack_unnamed_buffer_when_opening = true,
  hijack_directories = {
    enable = true,
    auto_open = true,
  },
})
