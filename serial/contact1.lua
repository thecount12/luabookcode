-- script to process json file
json_data = io.open("contact.json", 'r')
print(type(json_data))
print(json_data:read())
print("---")
print(type(json_data:read()))
print("---")
json_data:seek("end",-25)
print(json_data:read("*a"))