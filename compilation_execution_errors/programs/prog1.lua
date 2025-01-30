function dofile(file)
	local f = assert(loadfile(file)) -- assert() is used to raise an error if loadfile fails

	return f
end

func = dofile("sample.lua")

print(func())
