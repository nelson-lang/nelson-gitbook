# keyMatch

Check whether two dictionary keys are same.

## 📝 Syntax

- tf = keyMatch(A, B)

## 📥 Input argument

- A - array
- B - array

## 📤 Output argument

- tf - logical: true or false.

## 📄 Description

<b>tf = keyMatch(A, B)</b> returns <b>true</b> if arrays <b>A</b> and <b>B</b> have identical classes, properties, dimensions, and values, and returns <b>false</b> otherwise.

For custom classes, overloading <b>keyMatch</b> may be necessary to ensure accurate equivalence.

## 💡 Example

```matlab
A = {'a', 'b', 1};
B = {1, 'a', 'b'};
C = A;
D = B;
keyMatch(A, B)
keyMatch(A, C)
keyMatch(B, D)
```

## 🔗 See also

[keyHash](../dictionary/keyHash.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.5.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
