-- An analogy for explaining a closure

function createTable()
	return {}
end

-- both store an emtpy table
-- but both the tables are different!
tableA = createTable();
tableB = createTable();

if tableA == tableB then
	print("This isn't possible!");
else
	print("This is correct!");
end
