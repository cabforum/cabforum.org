-- Pandoc filter to add a link at the end of each header that links to its own id
function Header(header)
    -- Check if the header has an id
    if #header.identifier > 0 then
        -- SVG image as a string
        local svg = '<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-link-45deg" viewBox="0 0 16 16"><path d="M4.715 6.542L3.343 7.914a3 3 0 1 0 4.243 4.243l1.828-1.829A3 3 0 0 0 8.586 5.5L8 6.086a1.001 1.001 0 0 0-.154.199 2 2 0 0 1 .861 3.337L6.88 11.45a2 2 0 1 1-2.83-2.83l.793-.792a4.018 4.018 0 0 1-.128-1.287z"/><path d="M6.586 4.672A3 3 0 0 0 7.414 9.5l.775-.776a2 2 0 0 1-.896-3.346L9.12 3.55a2 2 0 0 1 2.83 2.83l-.793.792c.112.42.155.855.128 1.287l1.372-1.372a3 3 0 0 0-4.243-4.243L6.586 4.672z"/></svg>'

        -- Create a raw HTML link that points to the header id, contains the SVG image, and has a class for styling
        local link = pandoc.RawInline('html', '<a href="#' .. header.identifier .. '" class="header-link">' .. svg .. '</a>')

        -- Add the link to the end of the header content
        table.insert(header.content, pandoc.Space())
        table.insert(header.content, link)
    end

    local stringifiedHeader = pandoc.utils.stringify(header)
    local match = stringifiedHeader:match("^[%d%.]+")
    if match then
        local section = string.gsub(match, "%.$", "")
        local section_id = pandoc.RawInline('html', '<span id="' .. header.identifier .. '" />')
        table.insert(header.content, section_id)
    end

    return header
end
