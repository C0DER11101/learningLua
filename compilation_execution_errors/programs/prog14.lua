-- Program taken from Programming in Lua: Chapter 8

function foo(str)
	if type(str) ~= "string" then
		error("string expected", 2) -- error occurred on level 2 in the calling hierarchy
	end
end

foo({x = 1})
