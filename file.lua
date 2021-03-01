-- File I/O
file = io.open("newfile.txt", "w+")
-- Write data to the file
file:write("William Gunnells\n")
file:write("John Doe\n")
-- Move back to the beginning of the file
file:seek("set", 0)
-- Read from the file
print(file:read("*a"))
-- Close the file
file:close()
-- Open file for appending and reading
file = io.open("newfile.txt", "a+")
file:write("Let's write more text\n")
file:seek("set", 0)
print(file:read("*a"))
file:close()