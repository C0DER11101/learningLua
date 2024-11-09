a = {12, 20; ["x"] = "Lua", y = "Programming"};

for key, val in pairs(a) do -- pairs() considers all the keys (integer or otherwise)
	print(key, val);
end
