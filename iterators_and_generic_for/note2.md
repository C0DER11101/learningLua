# stateless iterators

* A stateless iterator is an iterator that doesn't keep any state by itself. Therefore, the same stateless iterator may be used in multiple loops, avoiding the cost of creating new closures.
* On each iteration, the `for` loop calls its iterator function with two arguments: the invariant state and the control variable. A stateless iterator generates the next element for the iteration using only these two arguments.
* An example of this type of iterator is `ipairs` which iterates over all elements in an array. The state of the iteration is the table being traversed (the invariant state, which doesn't change during the loop), plus the current index (the control variable).
* When Lua calls `ipairs(a)` in a `for` loop, it gets three values: the iterator function, the invariant state `a` and zero as the initial value for the control variable. Then Lua calls the iterator function with `a` and 0 as its arguments, which results in 1 and `a[1]`. In the second iteration, it calls the iterator function with arguments `a` and 1, which results in 2 and `a[2]` and so on, until the first nil element.
* The `pairs` function is also similar to `ipairs`, except that the iterator function is the primitive `next` function. The call `next(t, k)`, where `k` is a key of the table `t`, returns a next key in the table, in arbitrary order. It also returns the value associated with that key, as a second return value. When there are no more pairs, `next` returns `nil`.

<p align="center">
ooOoo
</p>
