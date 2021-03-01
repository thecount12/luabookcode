s = "my string"
words = {}
for x in string.gmatch(s, "%a+") do
    words[#words + 1] = x
end

for i = 1, #words do
    print(words[i])
end

s = "Test date 02/10/2021,"
date_pattern = "%d%d/%d%d/%d%d%d%d"
print(string.match(s, date_pattern))

print((string.gsub("hello, my-friend!", "%A", ".")))

_, vowels = string.gsub("foobar", "[AEIOUaeiou]", "")
print(vowels)
pair = "name = William"
key, value = string.match(pair, "(%a+)%s*=%s*(%a+)") 
print(key, value)

s = [[then she said: "let's go already"!]]
q, quotedPart = string.match(s, "([\"'])(.-)%1") 
print(quotedPart)
print(q)