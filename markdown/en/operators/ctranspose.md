# ctranspose

Returns complex conjugate transpose: ' operator.

## 📝 Syntax

- C= ctranspose(A)
- C = A'

## 📥 Input argument

- A - a variable

## 📤 Output argument

- C - result: complex conjugate transpose of A.

## 📄 Description

<b>C = ctranspose(A)</b> returns the complex conjugate transpose of A.

## 💡 Examples

```matlab
A = 3
B = A'
```

```matlab
A = -i
B = A'
```

```matlab
 A = sparse(eye(3, 4) * i)
B = A'
```

## 🔗 See also

[transpose](../operators/transpose.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
