f = loadfile("foo.lua") -- foo is compiled

-- foo("ok") -- ERROR: foo() not defined yet

f() -- run the chunk to define foo()

foo("ok") -- works because foo() has been defined
