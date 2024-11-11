function findMax(a)
	local maxVal, maxKey = nil, nil;
	for key, val in ipairs(a) do
		if val > maxVal then
			maxKey = key;
			maxVal = val;
		end
	end

	return maxKey, maxVal;
end

a = {8, 10, 23, 15, 5};

print(findMax(a));
