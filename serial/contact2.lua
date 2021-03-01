-- script to process json file
for line in io.lines("contact.json") do
    -- print(line)
    get_pattern = line:match("%s*(.-)%:")
    -- print(get_pattern)
    if get_pattern == nil then
        print(line)
    end
    if get_pattern ~= nil then
        pattern = get_pattern -- just a copy
        fix = string.format("%s:", get_pattern)
        print(fix)
        clean = get_pattern.gsub(pattern, "\"", "")
        new_key = string.format("%s=", clean)
        print(clean)
        print(new_key)
        --repair_line = line.gsub()
    end
end