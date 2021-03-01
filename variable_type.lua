-- variables

Anumber = 42
Bnumber = Anumber * 2

Anumber = 42; -- simicolon ignored
Bnumber = Anumber * 2

print(Anumber)
print(Bnumber)
FirstName = 'William'
LastName = "Gunnells"
print("First: %s", FirstName) -- wrong
io.write("Last: %s", LastName, "\n") --- wrong
print(string.format("%s %s", FirstName, LastName))
print(foo)
print("Count: ", #FirstName)
