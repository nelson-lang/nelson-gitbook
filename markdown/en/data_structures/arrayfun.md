# arrayfun

Apply a function to each element of an array.

## 📝 Syntax

- B = arrayfun(func, A)
- B = arrayfun(func, A1, ..., An)
- B = arrayfun(..., 'UniformOutput', false)
- [B1, ..., Bm] = arrayfun(...)

## 📥 Input argument

- func - function handle to apply on each element. Must return scalar unless 'UniformOutput' is false.
- A, A1, ..., An - input arrays of the same size.
- 'UniformOutput' - logical scalar. If false, outputs are returned in a cell array.

## 📤 Output argument

- B, B1, ..., Bm - outputs of function applied elementwise. Cell array if 'UniformOutput' is false.

## 📄 Description

<b>arrayfun(func, A)</b> applies the function <b>func</b> to each element of array <b>A</b>, and returns the result in <b>B</b> with the same size as <b>A</b>.

<b>arrayfun(func, A1, ..., An)</b> applies <b>func</b> to corresponding elements of input arrays. All arrays must be the same size.

Use the <b>'UniformOutput'</b> option set to <b>false</b> to allow output values that cannot be concatenated into a single array. In this case, the result is a cell array.

<b>[B1, ..., Bm] = arrayfun(...)</b> captures multiple outputs from the applied function.

## 💡 Examples

Apply mean to structure field

```matlab

S(1).f1 = rand(1, 5);
S(2).f1 = rand(1, 10);
S(3).f1 = rand(1, 15);
means = arrayfun(@(x) mean(x.f1), S);

```

Return multiple outputs from function

```matlab

f = @(x) deal(x, x^2);
[A, B] = arrayfun(f, 1:4);

```

Return variable-sized outputs in a cell array

```matlab

S(1).f1 = rand(3,5);
S(2).f1 = rand(2,6);
A = arrayfun(@(x) mean(x.f1), S, 'UniformOutput', false);

```

## 🔗 See also

[cellfun](../data_structures/cellfun.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

## 👤 Author

Allan CORNET
