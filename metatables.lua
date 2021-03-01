-- Metatables
myTable = {}
for num = 1, 10, 1 do
  myTable[num] = num
end
print("table size: " .. #myTable)
youTable = {}
count = 1
for x = 101, 111, 1 do
  youTable[count] = x -- cant start table at 101
  count = count + 1 -- must use incremental 1=101, 2=102, 3=103
end
print("table size: " .. #youTable)

mt = {
  __add = function (table1, table2)

    sumTable = {}

    for y = 1, #table2 do  -- pick the larger table and force a zero at the end
      if (table1[y] ~= nil) and (table2[y] ~= nil) then
        sumTable[y] = table1[y] + table2[y]
      else
        sumTable[y] = 0
      end
    end

    return sumTable
  end,

  -- check for equality
  __eq = function (table1, table2)
    return #table1 == #table2
  end,
}

-- Attach metamethods to this table
setmetatable(myTable, mt)
setmetatable(youTable, mt)

-- Check if tables are equal
print(myTable == youTable) -- should return false

addTable = {} -- add values to this table
addTable = myTable + youTable

-- print the results of the addition
for z = 1, #addTable do
  print(addTable[z])
end

print(getmetatable(myTable))
print(getmetatable(myTable) == mt)