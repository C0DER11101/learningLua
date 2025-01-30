# The `loadfile` function

* `loadfile` loads a Lua chunk from a file and compiles it and returns the compiled chunk as a function.
* `loadfile` doesn't raise errors, but instead returns error codes, so that we can handle the error.
* In case of errors, `loadfile` returns `nil` plus the error message which allows us to handle the error in customized ways.
* If we need to run a file several times, we can call `loadfile` just once and its result several times.

---

# The `loadstring` function

* This function is similar to `loadfile` but reads its chunk from a string instead of a file.

---

* Lua treats any independent chunk as the body of an anonymous function.
* Example, for a chunk "a = 1", `loadstring` returns the equivalent of
```lua
function () a = 1 end
```
* Like any other function, chunks can declare local variables and return values.
* Just like `loadfile`, `loadstring` never raises errors, it just returns a `nil` plus an error message.
* In Lua, function definitions are assignments. They are made at runtime, not at compile time.
* It's not very sensible to use `loadstring` on a literal string.
* The code
```lua
f = loadstring("i = i + 1")
```
is <em>roughly</em> equivalent to
```lua
g = function () i = i + 1 end
```
but the latter snippet is much faster, because it is compiled only once, when the chunk is compiled. In the first code, each call to `loadstring` involves a new compilation. There is one more difference between these two codes, `loadstring` doesn't compile with lexical scoping.
* Consider this lua program
```lua
local i = 0
f = loadstring("i = i + 1")
g = function () i = i + 1 end
```
The function `g` manipulates the local `i` but `f` manipulates a global `i` because `loadstring` always <ins>compiles its strings in a global environment</ins>.
* The most typical use of `loadstring` is to run external code, that is, pieces of code that come from outside our program.
* `loadstring` expects statements. To evaluate an expression, a `return` has to be prefixed with it so that we get a statement that returns the value of the given expression.

# Programs
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog1.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog1.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog2.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog2.lua</a>[^1].
[^1]: <a href="https://forum.cfx.re/t/request-loadstring-lua-function/122926">https://forum.cfx.re/t/request-loadstring-lua-function/122926</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog3.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog3.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog3.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog3.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog5.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog5.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog6.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog6.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog7.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog7.lua</a>.

<p align="center">
ooOoo
</p>
