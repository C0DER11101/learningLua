-- Program taken from Programming in Lua: Chapter 8

print("enter a number: ")
n = io.read("*number")
if not n then
	error("invalid input")
end
