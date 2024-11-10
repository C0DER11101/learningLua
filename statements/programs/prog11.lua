a = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

i = 1;

v = "Thursday";

while a[i] do
	if a[i] == v then
		break;
	end

	print(a[i]);

	i = i + 1;
end
