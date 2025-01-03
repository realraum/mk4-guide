
local List = require 'pandoc.List'

function Pandoc(doc)
  local meta = doc.meta
  local body = List:new{}
--    local mark = function (mark_name) return default_marks[mark_name] end

  local openPop = assert(io.popen("git log --pretty=format:'%h %ad [%an] %s' HEAD~...HEAD", 'r'))
  local output = openPop:read('*all')
  openPop:close()

  local contributors = {
    pandoc.Str('version: ' .. output),
    pandoc.Space(),
  }
  body:extend(List:new{pandoc.Para(contributors)})
  body:extend(doc.blocks)
--[[
      body:extend(create_equal_contributors_block(doc.meta.author, mark) or {})
      body:extend(create_affiliations_blocks(doc.meta.institute) or {})
      body:extend(create_correspondence_blocks(doc.meta.author, mark) or {})
      body:extend(doc.blocks)

      -- Overwrite authors with formatted values. We use a single, formatted
      -- string for most formats. LaTeX output, however, looks nicer if we
      -- provide a authors as a list.
      meta.author = FORMAT:match 'latex'
        and pandoc.MetaList(doc.meta.author):map(author_inline_generator(mark))
        or pandoc.MetaInlines(create_authors_inlines(doc.meta.author, mark))
      -- Institute info is now baked into the affiliations block.
      meta.institute = nil

]]--

    return pandoc.Pandoc(body, meta)
end
