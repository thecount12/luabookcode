-- OOP
Animal = {name = "No Name", sound = "No Sound", age = 0}
-- initialize Animal class
function Animal:new (name, sound, age)
  -- constructor
  setmetatable({}, Animal)
  -- reference values to self
  self.name = name
  self.sound = sound
  self.age = age
  return self
end
-- Return string method on Animal class
function Animal:toString()
  animal_string = string.format("Nmae: %s, Sound: %s, Age: %d\n", self.name, self.sound, self.age)
  return animal_string
end
-- Create Animal
fido = Animal:new("Fido", "Roof", 4)
-- Get variable values
print(fido.name)
-- Call a function in Animal
print(fido:toString())

-- inheritance
Cat = Animal:new()
function Cat:new (name, sound, age, treats)
  setmetatable({}, Cat)
  self.name = name
  self.sound = sound
  self.age = age
  self.treats = treats
  return self
end
-- Overide an Animal function
function Cat:toString()
  catStr = string.format("Nmae: %s, Sound: %s, Age: %d, Treats: %s\n", self.name, self.sound, self.age, self.treats)
  return catStr
end
-- Create a Cat
garfield = Cat:new("Garfield", "Meow", 10, "Tuna")
print(garfield.name)
print(garfield:toString())