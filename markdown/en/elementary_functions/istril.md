# istril

Checks if matrix is lower triangular.

## 📝 Syntax

- tf = istril(M)

## 📥 Input argument

- M - a numeric array

## 📤 Output argument

- tf - logical: result of 'istril'.

## 📄 Description

<b>istril</b> returns an scalar logical if entry is lower triangular.

## 💡 Example

```matlab
A = eye(3, 3);
R = istriu(A)
R = istriu(A(:,1))
```

## 🔗 See also

[isdiag](../elementary_functions/isdiag.md), [istril](../elementary_functions/istril.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
