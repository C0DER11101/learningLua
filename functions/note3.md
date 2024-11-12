# Named arguments

* The parameter passing mechanism in Lua is <em>positional</em>: when we call a function, arguments match parameters by their positions.
* Sometimes, it's useful to specify the arguments by name:<br>
```lua
-- invalid code
rename(old="temp.lua", new="temp1.lua")
```
Lua has no <em>direct</em> support for such syntax.
* The idea here is to pack all arguments into a <em>table</em> and use that table as the only argument to the function.
* This style of parameter passing is especially helpful when the function has many parameters, and most of them are optional.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog19.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog19.lua).

<p align="center">
ooOoo
</p>
