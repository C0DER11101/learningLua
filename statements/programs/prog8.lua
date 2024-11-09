a = {[1] = "hello", [2] = "world"; x = 10, y = 30};

for key, val in ipairs(a) do -- ipairs() takes only the integer indices or keys
	print(key, val); -- only prints `hello' and `world'
end
