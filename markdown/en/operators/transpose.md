# transpose

Returns vector or matrix transpose: .' operator.

## 📝 Syntax

- C= transpose(A)
- C = A .'

## 📥 Input argument

- A - a variable

## 📤 Output argument

- C - result: transpose of A.

## 📄 Description

<b>C = transpose(A)</b> returns the transpose of A.

## 💡 Examples

```matlab
A = 3
B = A.'
```

```matlab
A = -i
B = A.'
```

```matlab
 A = sparse(eye(3, 4) * i)
B = A.'
```

## 🔗 See also

[ctranspose](../operators/ctranspose.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
