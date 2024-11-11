-- return no results
function foo0()
end


-- return one result
function foo1()
	return 'a'
end


-- return two results
function foo2()
	return 'a', 'b'
end


----------------------------------------------------------------------

a = {foo0()}; -- a = {}
b = {foo1()}; -- b = {'a'}
c = {foo2()}; -- c = {'a', 'b'}

print(b[1]);

print(c[1], c[2]);

d = {foo0(), foo1(), foo2()}; -- d = {nil, 'a', 'a', 'b'}

print(d[1], d[2], d[3], d[4]);

e = {foo0(), foo1(), foo2(), "hello world"}; -- e = {nil, 'a', 'a', "hello world"}

print(e[1], e[2], e[3], e[4]);
