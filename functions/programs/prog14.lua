function varFunc(...)
	local args = {...};
	for key, val in ipairs(args) do
		print(key, tostring(val));
	end
end

varFunc(10, 20, "hello");
