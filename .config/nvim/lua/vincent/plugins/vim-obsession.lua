-- import gitsigns plugin safely
local setup, vimobsession = pcall(require, "vim-obsession")
if not setup then
  return
end

-- configure/enable gitsigns
vimobsession.setup()
