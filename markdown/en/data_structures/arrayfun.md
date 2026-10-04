# arrayfun

Apply a function to each element of an array.

## 📝 Syntax

- B = arrayfun(func, A)
- B = arrayfun(func, A1, ..., An)
- B = arrayfun(..., 'UniformOutput', false)
- B = arrayfun(..., 'ErrorHandler', errfunc)
- [B1, ..., Bm] = arrayfun(...)

## 📥 Input argument

- func - function handle (or a character vector with the function name) to apply on each element. With the default 'UniformOutput', true, it must return a scalar of the same class on every call, so the results can be concatenated into an array.
- A, A1, ..., An - input arrays, all of the same size. func is called with corresponding elements A1(i), ..., An(i).
- 'UniformOutput' - logical scalar (default true). When false, the outputs are returned in a cell array and func may return values of any size and class.
- 'ErrorHandler' - function handle called when func raises an error. It receives a structure describing the error (fields 'message', 'identifier' and 'stack') followed by the element inputs passed to func, and returns the replacement output(s). If no error handler is supplied, the error is rethrown.

## 📤 Output argument

- B, B1, ..., Bm - outputs of function applied elementwise. Cell array if 'UniformOutput' is false.

## 📄 Description

<b>arrayfun(func, A)</b> applies the function <b>func</b> to each element of array <b>A</b>, and returns the result in <b>B</b> with the same size as <b>A</b>.

<b>arrayfun(func, A1, ..., An)</b> applies <b>func</b> to corresponding elements of input arrays. All arrays must be the same size.

Use the <b>
'UniformOutput'
</b> option set to <b>false</b> to allow output values that cannot be concatenated into a single array. In this case, the result is a cell array.

With the default <b>'UniformOutput'</b> set to <b>true</b>, <b>func</b> must return a scalar value of the same class on every element so that the individual results can be assembled into an array; otherwise use <b>'UniformOutput'</b>, <b>false</b>.

Use the <b>'ErrorHandler'</b> option to provide a function that is invoked when <b>func</b> fails on an element, for example to substitute a default value.

<b>[B1, ..., Bm] = arrayfun(...)</b> captures multiple outputs from the applied function.

Many built-in functions and operators are already vectorized and broadcast over arrays; when the body of <b>func</b> is a simple element-wise expression, applying the equivalent expression directly to the whole array (for example <b>A.^2 + B.^2</b>) is usually the most efficient choice.

## 💡 Examples

Apply mean to structure field

```matlab

S(1).f1 = rand(1, 5);
S(2).f1 = rand(1, 10);
S(3).f1 = rand(1, 15);
means = arrayfun(@(x) mean(x.f1), S);

```

Element-wise expression over several arrays

```matlab

A = reshape(1:12, 3, 4);
B = reshape(12:-1:1, 3, 4);
R = arrayfun(@(x, y) sqrt(x.^2 + y.^2), A, B)

```

Return multiple outputs from function

```matlab

f = @(x) deal(x, x^2);
[A, B] = arrayfun(f, 1:4);

```

Return variable-sized outputs in a cell array

```matlab

C = arrayfun(@(x) 1:x, [2 3 4], 'UniformOutput', false)

```

Handle errors with an error handler

```matlab

errfun = @(S, x) NaN;
R = arrayfun(@(x) x(2), [1 2 3], 'ErrorHandler', errfun)

```

## 🔗 See also

[cellfun](../data_structures/cellfun.md), [bsxfun](../elementary_functions/bsxfun.md).

## 🕔 History

| Version | 📄 Description                                   |
| ------- | ------------------------------------------------ |
| 1.14.0  | initial version                                  |
| 2.0.0   | 'ErrorHandler' option and usage notes documented |

<!--
## 👤 Author

Allan CORNET
-->
