 -- contact table just an example
contact = {} 
-- contact.user
contact.user = {
  first_name = 'Peter',
  last_name = 'King',
  age = 42,
  access = { "blog", "editor", "forum" } -- sub table
  }
-- test table
print("test table is correct:" ..contact.user.first_name)

-- common serializer
function makeSerialize (o)
    if type(o) == "number" or type(o) == "boolean" then
      return tostring(o)
    else   -- assume it is a string
      return string.format("%q", o)
    end
  end

print("test serializer")
print(makeSerialize("following")) -- string
print(makeSerialize(42)) -- number
print(makeSerialize(false)) -- boolean

function save (name, value, out, indent, saved)
    indent = indent or 0      -- start indenting at zero cols
    local iname = string.rep (" ", indent) .. name -- indented name
    if type(value) == "number" or 
       type(value) == "string" or
       type(value) == "boolean" then
      table.insert (out, iname .. " = " .. makeSerialize(value))
    end
end

print("----------")
local out = {}
save("foo", "bar", out)
save("city", "San Diego", out)
print("table count: "..#out)
for k,v in pairs(out) do
    print(string.format("key: %s, val: %s", k,v))
end
print("pretty -----------")
print(table.concat(out, "\r\n"))