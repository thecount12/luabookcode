-- printint out types
print(type(nil))
print(type(true))
print(type(10.5 *2))
print(type("Name"))
print(type(io.stdin))
print(type(print))
print(type(type))
print(type({}))
print(type(type(X)))
-- Booleans store with true or false
canDriveCar = true
io.write(type(canDriveCar), "\n")
-- Strings
name = "Peter King"
newName = string.gsub(name, "Peter", "John")
print(newName)