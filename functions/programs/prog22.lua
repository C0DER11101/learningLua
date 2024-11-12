-- Program taken from Programming in Lua: Chapter-6

network = {
	{name = "grauna", IP = "210.26.30.34"},
	{name = "arraial", IP = "210.26.30.23"},
	{name = "lua", IP = "210.26.23.12"},
	{name = "derain", IP = "210.26.23.20"}
}

for key in ipairs(network) do
	print(network[key].name, network[key].IP);
end

table.sort(network, function(a, b) return a.name < b.name end) -- sort the values of the table based on the `name' field

print"-----------------------------"

for key in ipairs(network) do
	print(network[key].name, network[key].IP);
end
