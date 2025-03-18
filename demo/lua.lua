-- Variables (global and local)
local message = "Hello, Lua!"
_G.globalVar = 42

-- Function definitions
function greet(name)
    local greeting = "Welcome, " .. name .. "!"
    print(greeting)
end

-- Table (Lua's primary data structure)
local person = {
    name = "Alice",
    age = 30,
    hobbies = {"reading", "gaming", 42},
    getDetails = function(self)
        return self.name .. " is " .. self.age .. " years old"
    end
}

-- Conditionals
if person.age >= 18 then
    print(person:getDetails())
elseif person.age > 0 then
    print("Not an adult yet")
else
    print("Invalid age")
end

-- Loops
for i = 1, 5 do
    print("Count: " .. i)
end

while person.age < 35 do
    person.age = person.age + 1
    print("Aging: " .. person.age)
end

for key, value in pairs(person.hobbies) do
    print(key .. ": " .. value)
end

-- Multiline string and escape sequences
local story = [[
This is a multiline
string with "quotes" and \n newlines.
]]

-- Operators and numbers
local sum = 10 + 5.5 * 2
local isTrue = true and false or not true

-- Error handling
local status, err = pcall(function()
    error("Something went wrong!")
end)

-- Metatables
local mt = {
    __add = function(a, b)
        return a.value + b.value
    end
}
local obj = { value = 10 }
setmetatable(obj, mt)

-- Call some functions
greet("Bob")
print("Sum: " .. obj + obj)

-- Single-line comment
--[[ Multiline
     comment --]]
