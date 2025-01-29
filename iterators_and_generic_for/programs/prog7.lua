function allwords(f)
	for l in io.lines() do
		for w in string.gmatch(l, "%w+") do
			f(w)
		end
	end
end

local count = 0

allwords(function(w) -- an anonymous function as an argument
	if w == "hello" then
		count = count + 1
	end
end)

print(count);
