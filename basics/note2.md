# Tables

* Table type implementa associative arrays.
* Associative array is an array that can be indexed with numbers as well as with strings or any other value of the language except **nil**.
* Tables have no fixed size.
* Tables are the main, powerful and the only data structuring mechanism in Lua.
* Lua uses tables to represent packages as well.
* Tables in Lua are **objects**.
* For me, since I have a background in C, I will look at a table as a dynamically allocated object (as stated in the Book) and my program manipulates **pointers** to them (quoting the Book).
* A table is declared with a _constructor expression_, which is written as `{}`.
* There is no fixed relationship between a variable that holds a table and the table itself.
* Each table may store values with different types of indices and it grows as it needs to accommodate new entries.
* Just like global variables:
	* table fields evaluate to **nil** if they are not initialized.
	* a table field can be assigned **nil** to delete it.
* To represent the value of a key in table, the key is used as an index. Lua also supports using the dot operator (`.`) to access the value of a certain key (for e.g. if `a` is a table and `"x"` is some key in it, then `a.x` will give the value of the key `"x"` in the table).
* `a.x` is actually `a["x"]` and not `a[x]`, where `a` is a table and `"x"` is a key in it. `a[x]` is going to access the value associated with the key stored in the variable `x`.
* Lua arrays start at index 1.
* Tables in Lua can be indexed with any value.
* Indices like `10` and `"10"` are different and represent different positions in the table.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog3.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog4.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog4.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog5.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog5.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog6.lua](https://github.com/C0DER11101/learningLua/blob/doLua/basics/programs/prog6.lua).

<p align="center">
ooOoo
</p>
