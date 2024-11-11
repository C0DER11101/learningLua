# Variable number of arguments

* A function that takes in `...` as its parameter takes a variable number of arguments.
* When this function is called, all its arguments are collected in a single table, which the function accesses as a hidden parameter named `arg`.
* Besides those arguments, the `arg` table has an extra field, `n`, with the actual number of arguments collected.[^1]
[^1]: [https://jdhao.github.io/2022/12/02/lua-variadic-arguments/](https://jdhao.github.io/2022/12/02/lua-variadic-arguments/).

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog14.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog14.lua).

<p align="center">
ooOoo
</p>
