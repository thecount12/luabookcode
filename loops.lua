-- While Loop
i = 1
while (i <= 10) do
  io.write(i)
  if i == 8 then
    break -- continue command does not exist in Lua
  end
  i = i + 1
end
print("\n")
-- For loop: start, end, increment
for i = 1, 10, 1 do
  io.write(i)
end
print()
-- Create a table which is a list of items like an array
fruits = {"Apple", "Orange", "Peach", "Plumb"}
-- Cycle through table where k is the key and v the value of each item
for k, v in pairs(fruits) do
  io.write(v, " ")
end