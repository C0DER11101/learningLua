# Variable number of arguments

* A function that takes in `...` as its parameter takes a variable number of arguments.
* When this function is called, all its arguments are collected in a single table, which the function accesses as a hidden parameter named `arg`.
* Besides those arguments, the `arg` table has an extra field, `n`, with the actual number of arguments collected.[^1]
[^1]: [https://jdhao.github.io/2022/12/02/lua-variadic-arguments/](https://jdhao.github.io/2022/12/02/lua-variadic-arguments/).
* To select a specific result returned from a function, the `select()` function can be used.
* The `select` function always has one fixed argument, the <em>selector</em>, and then it takes a variable number of arguments.
* Sometimes a function with a variable number of arguments needs to pass them all to another function. All it has to do is to call the other function using `unpack(arg)` as argument. `unpack` will return all values in `arg`, which will be passed to the other function.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog14.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog14.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog15.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog15.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog16.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog16.lua).[^longnote]

[^longnote]: Couldn't understand what was actually mentioned in the reference manual about `select` because I had taken the point about "selecting a specific result returned from a function" literally. So, I went [here](https://www.tutorialspoint.com/select-function-in-lua-programming) and tried out this program myself and then everything was clear in my head.
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog17.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog17.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog18.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog18.lua).

<p align="center">
ooOoo
</p>
