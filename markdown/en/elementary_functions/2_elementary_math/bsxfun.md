# bsxfun

Apply element-wise function with implicit expansion.

## 📝 Syntax

- C = bsxfun(fun, A, B)

## 📥 Input argument

- fun - handle to a binary element-wise function (or a character vector with the function name). Common built-in operations that can be used are: @plus, @minus, @times, @rdivide, @ldivide, @power, @max, @min, @rem, @mod, @hypot, @atan2, @eq, @ne, @lt, @le, @gt, @ge, @and, @or and @xor. Any user-defined binary element-wise function handle is also accepted.
- A - array (numeric or logical).
- B - array (numeric or logical).

## 📤 Output argument

- C - result of applying fun to A and B with singleton expansion.

## 📄 Description

<b>bsxfun</b> applies the element-wise binary function fun to arrays A and B, with implicit expansion (singleton dimensions are virtually replicated) so that A and B need not have the same size.

For each dimension, the sizes of A and B must either be equal, or one of them must be 1. A dimension of size 1 is expanded to match the size of the other array. If two corresponding dimensions differ and neither is 1, an error is raised.

The result C has, along each dimension, the larger of the two input sizes. For example, combining an <b>m</b>-by-<b>1</b> column with a <b>1</b>-by-<b>n</b> row yields an <b>m</b>-by-<b>n</b> result.

Element-wise operators in Nelson already broadcast singleton dimensions, so <b>A + B</b> is equivalent to <b>bsxfun(@plus, A, B)</b> and is usually the preferred form.

## 💡 Examples

Add a column vector to a row vector

```matlab
bsxfun(@plus, (1:3)', 1:4)
```

Subtract the column mean from each column

```matlab
A = magic(4);
bsxfun(@minus, A, mean(A))
```

Element-wise comparison with implicit expansion

```matlab
bsxfun(@gt, (1:3)', 1:4)
```

Anonymous binary function

```matlab
bsxfun(@(x, y) sqrt(x.^2 + y.^2), (1:3)', 1:4)
```

Function name given as a character vector

```matlab
bsxfun('times', (1:3)', 1:4)
```

## 🔗 See also

[arrayfun](../../data_structures/arrayfun.md), [cellfun](../../data_structures/cellfun.md), [repmat](../../elementary_functions/repmat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
