function add(a)
	local sum = 0;

	for key, val in ipairs(a) do
		sum = sum + val;
	end

	return sum; -- returning a value
end

a = {12, 20, 40; ["hello"] = 56, ["world"] = "hello"; 90};

print("Sum: ", add(a));
