function list_iter(list)
	local index = 0

	return function()
		index = index + 1
		return index, list[index]
	end
end

sample_table = {1, 2, 3, "hello"}

iterator = list_iter(sample_table)

key, val = iterator()

while val ~= nil do
	print(key, val)
	key, val = iterator()
end
