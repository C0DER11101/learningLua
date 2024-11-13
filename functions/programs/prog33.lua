local f, g -- forward declarations

f = function()
	g()
end

g = function()
	f()
end

f()
