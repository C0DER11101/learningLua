function printVal(a, b)
	print("a = ", a);
	print("b = ", b);
end

print("First call to printVal():");
printVal(); -- a = nil, b = nil

print("Second call to printVal():");
printVal(10); -- a = 10, b = nil

print("Third call to printVal():");
printVal(10, 20); -- a = 10, b = 20

print("Fourth call to printVal():");
printVal(100, 120, 140); -- a = 100, b = 120, 140 is discarded
