local codeium_status, codeium = pcall(require, "codeium")

if not codeium_status then
  return
end

codeium.setup()
