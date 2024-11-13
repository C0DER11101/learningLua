# Iterators and closures

* An iterator is any construction that allows iterating over the elements of a collection.
* In Lua, an iterator is typically represented by functions: each time that function is called, it returns a "next" element from the collection.
* Any iterator needs to keep some state between successive calls, so that it knows where it is and how to proceed from there. Closures provide an excellent mechanism for that task.
* A closure construction involves two functions: the closure itself and a <em>factory</em>, the function that creates the closure.
* The generic `for` calls the iterator factory, keeps the iterator function <em>internally</em>, so there is no use of any iterator variable, calls the iterator at each new iteration and stops the loop when the iterator returns `nil`.

## Semantics of the generic `for`

* The generic `for`, along with keeping the iterator function internally, also keeps an <em>invariant state</em> and a <em>control variable</em>
* Syntax:<br>
```lua
for <var-list> in <exp-list> do
	<body>
end
```
where `<var-list>` is a list of one or more variable names, separated by commas, and `<exp-list>` is a list of one or more expressions, also separated by commas. Most often, the expression list has only one element, a call to an iterator factory.

* Example:<br>
```lua
for k, v in pairs(t) do
	print(k, v)
end
```
the list of variables is `k, v` and the list of expressions has the single element `pairs(t)`. Often the list of variables has one variable too.<br>
```lua
for line in io.lines() do
	io.write(line, '\n')
end
```
* The first variable in the list is called the <em>control variable</em>. Its value is never `nil` during the loop. When it becomes `nil`, the loop ends.
* The first thing the `for` does is to evaluate the expressions after the `in`. These expressions should result in the three values kept by the `for`: the iterator function, the invariant state and the initial value for the control variable. Like in a multiple assignment, only the last(or the only) element of the list can result in more than one value, and the number of values is adjusted to three, extra values being discarded or `nil`s added as needed.
* When simple iterators are used, the factory returns only the iterator function, so the invariant state and the control variable get `nil`.
* After the initialization step, the `for` calls the iterator function with two arguments: the invariant state and the control variable. Then the `for` assigns the values returned by the iterator function to variables declared by its variable list. If the first value (the one assigned to the control variable) returned is `nil`, the loop terminates. Otherwise the `for` executes its body and calls the iteration function again, repeating the process.
* A construction like:<br>
```
for var_1, ..., var_n in explist do
	block
end
```
is equivalent to the following code:<br>
```lua
do
	local _f, _s, _var = explist
	while true do
		local var_1, ..., var_n = _f(_s, _var)
		_var = var_1
		if _var == nil then break end
		block
	end
end
```
If `_f` is the iterator function, the invariant state is `_s` and the initial value for the control variable is $a_0$, the control variable will loop over the values $a_1$ = \_f(\_s, $a_0$), $a_2$ = \_f(\_s, $a_1$) and so on, until $a_i$ is `nil`.
* If the `for` has other variables, they simply get the extra values returned by each call to `f`.

# Programs

* [https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog1.lua](https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog1.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog2.lua](https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog2.lua).
* [https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog3.lua](https://github.com/C0DER11101/learningLua/blob/doLua/iterators_and_generic_for/programs/prog3.lua).

<p align="center">
ooOoo
</p>
