-- Tables
myTable = {} -- create an empty table
-- Add values to a table
for i = 1, 5 do
  myTable[i] = i
end
-- Access value by index
io.write("First Item : ", myTable[1], "\n")
io.write("Second Item : ", myTable[2], "\n")
-- Number of items in tables
io.write("Number of Items : ", #myTable, "\n")
-- Insert item at index
table.insert(myTable, 1, 0)
-- Combine table as a String and seperate with separtor
print(table.concat(myTable, "- "))
-- Remove item at index
table.remove(myTable, 1)
print(table.concat(myTable, ", "))
-- Sort items in reverse
table.sort(myTable, function(a,b) return a>b end)
print(table.concat(myTable, ", "))
-- multidimensional Table or matrix
MultiTable = {}
for i = 0, 5 do
  MultiTable[i] = {}
  for j = 0, 5 do
    MultiTable[i][j] = tostring(i) .. tostring(j)
  end
end
-- Access value in multi array
io.write("Value in MultiTable[0][0] : ", MultiTable[3][2], "\n")
-- Cycle through all values and print them
for i = 0, 5 do
  for j = 0, 5 do
    io.write(MultiTable[i][j], " : ")
  end
  print()
end