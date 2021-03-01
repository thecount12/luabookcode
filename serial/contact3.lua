-- script to process json file
file = io.open("newfile.lua", "a+")
local big_string = {}
num = 1
for line in io.lines("contact.json") do
    get_pattern = line:match("%s*(.-)%:")
    if get_pattern == nil then
        if line == "{" then
            item = string.format("item%d = {", num)
            --print(item)
            item_line = line.gsub(line, "{", item)
            print(item_line)
            big_string[#big_string+1] = item_line
            file:write(item_line.."\n")
            num = num + 1
        elseif line == "}," then
            line = line.gsub(line, "},", "}")
            print(line)
            big_string[#big_string+1] = line
            file:write(line.."\n")
        else
            print(line)
            big_string[#big_string+1] = line
            file:write(line.."\n")
        end
    end
    if get_pattern ~= nil then
        pattern = get_pattern -- just a copy
        fix = string.format("%s:", get_pattern)
        clean = get_pattern.gsub(pattern, "\"", "")
        new_key = string.format("%s=", clean)
        new_line = line.gsub(line, fix, new_key)
        print(new_line)
        big_string[#big_string+1] = new_line
        file:write(new_line.."\n")
    end
end
file:close()
print("-------------")
print(table.concat(big_string, "\n"))
print(type(big_string))
print(#big_string)
print(big_string[1])
print("------")

dofile("newfile.lua")
print(#item1)
print(type(item1))
print(item1.contact.user.firstname)
print(item2.contact.user.firstname)