function list_iter(list)
	local index = 0

	return function()
		index = index + 1
		if list[index] == nil then return end
		return index, list[index]
	end
end


sample_table = {1, 2, 3, "hello"}

for key, val in list_iter(sample_table) do
	print(key, val);
end

for key, val in function() return 1, 2 end do -- this is for visualizing what actually list_iter(sample_table) is returning
	print(key, val)
end
