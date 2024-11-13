-- Program taken from Programming in Lua: Chapter-6 - Section 6.3

function room1()
	local move = io.read()
	if move == "south" then return room3()
	elseif move == "east" then return room2()
	else print("Invalid move")
		return room1()
	end
end

function room2()
	local move = io.read()
	if move == "south" then return room4()
	elseif move == "west" then return room1()
	else print("invalid move")
	end
end

function room3()
	local move = io.read()
	if move == "south" then return room1()
	elseif move == "east" then return room4()
	else print("invalid move")
	end
end

function room4()
	print("Congratulations!")
end

room1()
