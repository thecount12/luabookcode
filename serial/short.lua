--file = file.open(concat.json, "r")
local my_arr = {}
for line in io.lines("contact.json") do
    my_arr[#my_arr+1] = line
end
fix = table.concat(my_arr)
data="return "..fix:gsub('("[^"]-"):','[%1]=')
-- T=loadstring(data)()
T=load(data)()
print(T.contact.user.firstname)
print(type(T))
for k,v in pairs(T) do
    print(string.format("Key %s, Val: %s", k, v))
end
