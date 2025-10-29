# isvector

Checks input is vector.

## 📝 Syntax

- tf = isvector(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- tf - logical: result of 'isvector'.

## 📄 Description

<b>isvector</b> returns an scalar logical if entry is an vector.

## 💡 Example

```matlab
A = eye(3, 3);
R = isvector(A)
R = isvector(A(:,1))
```

## 🔗 See also

[isempty](../elementary_functions/isempty.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
