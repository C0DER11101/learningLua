# Table constructors

* Constructors, in Lua, are expressions that create and initialize tables.
* Simplest constructor is the empty constructor: `{}`.
	* It creates an empty table.
* Constructors also initialize arrays (also called sequences or lists).
* Constructors may use any kind of expressions.
* Lua offers the following syntax to initialize a table to be used a record:<br>
```lua
a = {x = 0, y = 0}
```
which is equivalent to<br>
```lua
a = {}; a.x = 0; a.y = ;
```
* All tables are created equal, constructors <em>only affect their initialization</em>.
* <em>Everytime Lua evaluates a new constructor, it creates and initializes a new table</em>.
* Record-style and list-style initializations can be mixed in the same constructor.
* Limitations of tables:
	* Fields can't be initialized with negative indices.
	* Fields can't be initialized with string indices that are not proper identifiers.
* Solution to limitations:
	* Explicitly write the index to be initialized <em>as an expression, between square brackets</em>.
	* <ins>Note</ins>: This can also be considered a more general format for initializing fields in a table.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog4.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog4.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog5.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog5.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog6.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog6.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog7.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog7.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog8.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog8.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog9.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog9.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog10.lua](https://github.com/C0DER11101/learningLua/blob/doLua/expressions/programs/prog10.lua).

<p align="center">
ooOoo
</p>
