
local List = require 'pandoc.List'

function Pandoc(doc)
  local meta = doc.meta
  local body = List:new{}

  local openPop = assert(io.popen("git log --pretty=format:'%h %ad [%an] %s' HEAD~...HEAD", 'r'))
  local output = openPop:read('*all')
  openPop:close()

  body:extend(List:new{pandoc.Para(pandoc.Str('version: ' .. output))})
  body:extend(List:new{pandoc.Para(pandoc.Str('Fehlt etwas? Verbesserungsvorschläge? GitHub: github.com/realraum/guides'))})

  body:extend(doc.blocks)

  return pandoc.Pandoc(body, meta)
end
