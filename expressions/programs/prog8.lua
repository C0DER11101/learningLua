list = nil;
for line in io.lines() do
	list = {prev = list, value = line};
	print("Current table - ", list);
	print("Previous table - ", list.prev);
end

l = list;

while l do
	print(l.value);
	l = l.prev;
end
