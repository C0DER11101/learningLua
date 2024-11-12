-- Program taken from Programming in Lua: Chapter-6

function eraseTerminal()
	io.write("\27[2J")
end

-- writes an `*' at column `x', row `y'
function mark(x, y)
	io.write(string.format("\27[%f;%fH*", y, x))
end

TermSize = {w = 80, h = 24}

-- plot a function
function plot(f)
	eraseTerminal()

	for i = 1, TermSize.w do
		local x = (i / TermSize.w) * 2 - 1
		local y = (f(x) + 1) / 2 * TermSize.h
		mark(i, y)
	end

	io.read()
end

plot(function(x) return math.sin(x * 2 * math.pi) end)
