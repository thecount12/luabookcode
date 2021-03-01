
-- read csv
local author_list = {}
count = 1
for line in io.lines("data1.csv") do
    author_table = {}
    print("----")  -- divider to see whats going on
    print(line)
    print("----")  -- divider to see whats going on
    author = line:match("%s*(.-),")
    title = line:match(",%s*(.-),")
    print(author)
    print(title)
    author, title, publisher, date = line:match("%s*(.-),%s*(.-),%s*(.-),%s*(.-)")
    print(publisher)
    author_table['Author'] = author
    author_table['Title'] = title
    author_table['Publisher'] = publisher
    author_table['Date'] = date
    author_list[count] = author_table
    count = count + 1
end
print("_______")
print("tables: " .. #author_list)
for k, v in pairs(author_list) do
    print(v['Author'])
end