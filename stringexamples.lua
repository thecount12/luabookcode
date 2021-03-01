-- Example escape sequences
print("first line\nsecond line\n\"double quotes\",'single quotes'")
print('backslash quotes: \'\\\'')
print("a simple backslash: '\\'")
-- Long lines
longString = [[
I am a very very long
this string goes on for
ever]]
io.write(longString, "\n")
-- Combine Strings with ..
name = "William" Initial = " C"
LastName = " Gunnells"
name = name .. Initial .. LastName
io.write(name, "\n")
-- ---------- STRINGS ----------
NameLength = "William Cool'"
io.write("Name Length : ", string.len(NameLength), "\n")
-- Replace String
io.write("Replace I with me : ", string.gsub(NameLength, "iam", " is Great!"), "\n")
-- Find the index of a matching String
io.write("Index of Name : ", string.find(NameLength, "Will"), "\n")
io.write("Index of Name : ", string.find(NameLength, "Cool"), "\n")
-- Set characters to upper and lowercase
io.write("Quote Upper : ", string.upper(NameLength), "\n")
io.write("Quote Lower : ", string.lower(NameLength), "\n")
io.write("")