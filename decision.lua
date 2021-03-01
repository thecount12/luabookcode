-- Conditional and logical operators
age = 42
if age < 16 then
    io.write("Can't drive", "\n")
    local localVar = 10
elseif (age >= 16) and (age < 18) then
    io.write("Eligable to drive", "\n")
else
    io.write("You can vote", "\n")
end
 -- all on one line
if (age < 14) or (age > 67) then io.write("School or Retirement\n") end
-- Format format conversion
print(string.format("not true = %s", tostring(not true)))
-- No ternary operator but this is close
canVote = age > 18 and true or false
io.write("Can I Vote : ", tostring(canVote), "\n")
