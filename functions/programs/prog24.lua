function sortByGrade(names, grades)
	table.sort(names, function(n1, n2) return grades[n1] > grades[n2] end); -- this enclosed function has full access to the table `grades'
end

names = {"Peter", "Paul", "Mary"};
grades = {Mary = 10, Paul = 7, Peter = 8};

for key, val in ipairs(names) do
	print(val);
end

sortByGrade(names, grades);

print"-----------------------------"

for key, val in ipairs(names) do
	print(val);
end
