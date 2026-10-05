# any

any of the elements of a matrix satisfy some condition.

## 📝 Syntax

- R = any(M)
- R = any(M, dim)
- R = any(M, 'all')

## 📥 Input argument

- M - a matrix.
- dim - a integer value: dimension along it works.
- 'all' - tests over all elements of M.

## 📤 Output argument

- R - a logical matrix.

## 📄 Description


<b>any</b> returns true if any of the elements of a matrix satisfy some condition. 

Sparse logical, double, single, complex double, and complex single inputs are supported. Sparse numeric zeros are treated as false and nonzero real or complex entries are treated as true.

## 💡 Examples



```matlab
any([33, 22; 11, 0])
any([33, 22; 11, 0], 2)
```


```matlab
S = sparse(single([0 0; 2 + 1i 3]));
any(S)
any(S, 'all')
```


## 🔗 See also

[all](../operators/all.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.6.0   | manages input argument 'all'
       |
| 2.0.0   | added sparse single and complex single support |

<!--
## 👤 Author

anyan CORNET
-->
