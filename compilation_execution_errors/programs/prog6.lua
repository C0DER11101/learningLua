print("enter your expression: ")

local l = io.read()

local func = assert(load("return "..l))
print("The value of your expression is "..func())
