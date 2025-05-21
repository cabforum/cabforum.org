function Doc(doc)
  local version_text = ""
  local date_text = ""

  -- Extract version
  if doc.meta.version and doc.meta.version.c then
    version_text = pandoc.utils.stringify(doc.meta.version)
  elseif doc.meta.subtitle and doc.meta.subtitle.c then
    local subtitle_str = pandoc.utils.stringify(doc.meta.subtitle)
    local semantic_version = subtitle_str:match("([%d%.]+)")
    if semantic_version then
      version_text = semantic_version
    else
      version_text = subtitle_str
    end
  end

  -- Extract date
  if doc.meta.date and doc.meta.date.c then
    date_text = pandoc.utils.stringify(doc.meta.date)
  end

  local new_blocks = {}

  -- Construct the header text
  local header_parts = {}
  if version_text ~= "" then
    table.insert(header_parts, "Version: ")
    table.insert(header_parts, version_text)
  end

  if version_text ~= "" and date_text ~= "" then
    table.insert(header_parts, " – ")
  end

  if date_text ~= "" then
    if version_text == "" then
        table.insert(header_parts, "Date: ")
    end
    table.insert(header_parts, date_text)
  end
  
  local formatted_text = table.concat(header_parts)

  -- Create a Div with the custom class
  if formatted_text ~= "" then
    -- Convert the string to a list of inlines for the Div
    local div_content = { pandoc.Para({pandoc.Str(formatted_text)}) }
    
    -- Create the Div block with the class "doc-header-info"
    local div_attributes = { class = "pandoc-info small fw-light" }
    table.insert(new_blocks, pandoc.Div(div_content, div_attributes))
  end

  -- Prepend the new blocks to the document body
  for i = #new_blocks, 1, -1 do
    table.insert(doc.blocks, 1, new_blocks[i])
  end

  return doc
end
