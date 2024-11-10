days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

revDays = {};

for key, val in ipairs(days) do
	revDays[val] = key;
end

print(revDays["Sunday"]);
print(revDays["Saturday"]);
