function dofile(file)
	local f = assert(loadfile(file))

	return f
end

func = dofile("sample.lua")

print(func())
