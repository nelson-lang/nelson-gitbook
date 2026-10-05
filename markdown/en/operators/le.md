# le

less than or equal, = operator.

## 📝 Syntax

- C = le(A, B)

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of le(A, B)

## 📄 Description


<b>C = le(A, B)</b> returns a logical array with elements set to logical<b>true</b> A is less than or equal to B. 

<b>le</b> compares only the real part of numeric arrays. 

When inputs are sparse numeric or logical arrays, the result is a sparse logical array. Sparse <b>single</b> and single-complex operands are supported. 

For sparse complex arrays, order comparisons use the magnitude of each value.

## 💡 Examples



```matlab
eye(2,2) &#60;= ones(2, 2)
```


```matlab
0 &#60;= i
```


```matlab
'Nelson' &#60;= 'Noslen'
```


```matlab
'Nelson' &#60;= 'l'
```


```matlab
le(0.8 - 0.6 - 0.2, 0)
```


## 🔗 See also

[ne](../operators/ne.md), [lt](../operators/lt.md), [ge](../operators/ge.md), [gt](../operators/gt.md), [eq](../operators/eq.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | sparse single and single-complex operands supported. |

<!--
## 👤 Author

Allan CORNET
-->
