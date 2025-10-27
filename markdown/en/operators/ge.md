# ge

greater than or equal, >= operator.

## 📝 Syntax

- C = ge(A, B)
- C = (A >= B)

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A >= B

## 📄 Description

<b>C = ge(A, B)</b> returns a logical array with elements set to logical <b>true</b> A is greater than or equal to B.

<b>ge</b> compares only the real part of numeric arrays.

## 💡 Examples

```matlab
eye(2,2) >= ones(2, 2)
```

```matlab
0 >= i
```

```matlab
'Nelson' >= 'Noslen'
```

```matlab
'Nelson' >= 'l'
```

```matlab
ge(0.8-0.6-0.2, 0)
```

## 🔗 See also

[ne](../operators/ne.md), [lt](../operators/lt.md), [le](../operators/le.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
