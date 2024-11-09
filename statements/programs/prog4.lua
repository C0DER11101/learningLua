a = 4;
b = 10;
c = 2;

do
	local a2 = 2 * a;
	local d = math.sqrt(b ^ 2 - 4 * a * c);
	
	x1 = (-b + d) / a2;
	x2 = (-b - d) / a2;
end     -- scope of `a2' and `d' ends here

print("x1 = " .. x1);
print("x2 = " .. x2);

print("a2 = ", a2);
print("d = ", d);
