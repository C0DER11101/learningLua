# Proper tail calls

* A <em>tail call</em> is a kind of goto dressed as a call.
* A tail call happens when a function calls another as its last action, so it has nothing else to do.<br>
```lua
function f(x)
	return g(x)
end
```
After `f` calls `g`, it has nothing else to do. In such situations, the program doesn't need to return to the calling function when the called function ends. Therefore the program doesn't need to keep any information about the calling function in the stack.
* Language implementations like the Lua interpreter, take advantage of this fact and actually don't use any extra stack space when doing a tail call. These implementations are said to support <em>proper tail calls</em>.
* Because a proper tail call doesn't use any stack space, there is no limit on the number of "nested" tail calls that a program can make.
* The following code fails the criteria of a tail call:<br>
```lua
function f(x)
	g(x)
	return
end
```
`g` is not a tail call because `f` still has to discard occasional results from `g` before returning.
* Following are also not tail calls:<br>
```lua
return g(x) + 1 --> must do the addition
return x or g(x) --> must adjust to 1 result
return (g(x)) --> must adjust to 1 result
```
* In Lua, only a call in the format `return g(...)` is a tail call. However, both `g` and its arguments can be complex expressions. Following is a tail call:<br>
```lua
return x[i].foo(x[j] + a * b, i + j)
```
* A useful application of proper tail calls in Lua is for programming state machines.

# Program

* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog34.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog34.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog35.lua](https://github.com/C0DER11101/learningLua/blob/doLua/functions/programs/prog35.lua).

<p align="center">
ooOoo
</p>
