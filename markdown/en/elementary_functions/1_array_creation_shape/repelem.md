# repelem

Repeat copies of array elements.

## 📝 Syntax

- B = repelem(V, n)
- B = repelem(V, r)
- B = repelem(A, r, c)

## 📥 Input argument

- V - vector.
- A - matrix.
- n - repetition count: scalar integer.
- r, c - repetition counts: scalar integer or vector.

## 📤 Output argument

- B - result: vector or matrix.

## 📄 Description

<b>repelem(V, n)</b> repeats each element of vector <b>V</b> <b>n</b> times.

<b>repelem(V, r)</b> uses a vector <b>r</b> to repeat element <b>V(i)</b> exactly <b>r(i)</b> times.

<b>repelem(A, r, c)</b> repeats matrix rows <b>r</b> times and columns <b>c</b> times.

## 💡 Example

```matlab
repelem([1 2 3], 2)
repelem([1 2 3], [1 2 3])
```

## 🔗 See also

[repmat](../repmat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
