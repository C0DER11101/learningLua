-- Program taken from Programming Lua: Chapter 8

local file, msg

repeat -- repeat
	print("enter a file name: ")
	local name = io.read()
	if not name then -- if no input was provided
		return
	end

	file, msg = io.open(name, "r") -- open the file for reading

	if not file then -- if the file doesn't exist or no permission is granted
		print(msg .. "!!") -- display the error message returned by io.read()
	end

until file -- until file is non-nil
