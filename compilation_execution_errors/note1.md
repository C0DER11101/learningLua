# The `loadfile` function

* `loadfile` loads a Lua chunk from a file and compiles it and returns the compiled chunk as a function.
* `loadfile` doesn't raise errors, but instead returns error codes, so that we can handle the error.
* In case of errors, `loadfile` returns `nil` plus the error message which allows us to handle the error in customized ways.
* If we need to run a file several times, we can call `loadfile` just once and its result several times.

# The `loadstring` function

* This function is similar to `loadfile` but reads its chunk from a string instead of a file.

# Programs
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog1.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog1.lua</a>.
* <a href="https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog2.lua">https://github.com/C0DER11101/learningLua/blob/doLua/compilation_execution_errors/programs/prog2.lua</a>[^1].
[^1]: <a href="https://forum.cfx.re/t/request-loadstring-lua-function/122926">https://forum.cfx.re/t/request-loadstring-lua-function/122926</a>, <a href="https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#loadstring">https://create.roblox.com/docs/reference/engine/globals/LuaGlobals#loadstring</a>.

<p align="center">
ooOoo
</p>
