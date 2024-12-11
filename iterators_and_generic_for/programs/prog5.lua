-- Program taken from Programming Lua: Chapter-7 - Section 7.4

local iterator

function allwords()
	local state = {line = io.read(), pos = 1}
	return iterator, state
end

function iterator(state)
	while state.line do -- table contents will change along the loop
		-- search for next word
		local s, e = string.find(state.line, "%w+", state.pos)

		if s then -- if the word is found then
			state.pos = e + 1 -- move to the next position and 
			return string.sub(state.line, s, e) -- return the word
		else -- if no word was found then
			state.line = io.read() -- re-take user input
			state.pos = 1 -- reset the value of position
		end
	end

	return nil -- loop ended
end

_f, _s = allwords() -- take user input

string = _f(_s) -- get words

while string do
	print(string)
	string = _f(_s) -- get words
end
