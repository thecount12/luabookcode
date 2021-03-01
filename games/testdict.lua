local my_array = {}
local name = 'foo'
my_array[name] = 1
print("size array: " .. #my_array)
print(my_array['foo'])
print("---")
for i = 1, 4, 1 do
    item = "name" .. i
    print(item)
    my_array[item] = 1
end
print("ITEMS")
print(my_array['name1'])
print(my_array['name1'])

for k, v in pairs(my_array) do
    print(k, ": ", v)
end