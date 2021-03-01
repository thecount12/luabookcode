-- Functions
function Sum(num1, num2)
    return num1 + num2
end
 print(string.format("6 + 4 = %d", Sum(6,4)))
  
myString = "Lua functions are very fun"
function wordCount(item)
    myArray = {}
    num = 1
    for i in string.gmatch(item, "%S+") do
        myArray[num] = i
        num = num + 1
    end
    search = 'u'
    found = 0
    for k, v in pairs(myArray) do
        print(v)
        match, z = string.find(v, search)
        if (match ~= nil) and (match >=1) then
            found = found + 1
        end
    end
    print("Word count: " .. num-1)
    print("Word count: " .. #myArray)
    print("Found letter u: " .. found .. " times")
end
print(wordCount(myString))