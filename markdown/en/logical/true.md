# true

Logical true.

## 📝 Syntax

- true
- l = true(n)
- l = true(sz)
- l = true(size(A))
- l = true(n, m, ..., k)
- l = true(n, m, 'like', sp)

## 📥 Input argument

- n - a integer value.
- sz - a row vector of dimensions, such as the result of <b>size</b>.
- A - an array whose size is used to create the output.
- n, m, ..., k - a n -by- m - ... -by- k array to indicate size.
- sp - a sparse or array.

## 📤 Output argument

- l - a logical value: true.

## 📄 Description


<b>true</b> builds an array of logical true values.

## 💡 Example



```matlab
true
true(4)
true(4, 1, 4)
A = zeros(2, 3);
T = true(size(A))
L = logical(sparse(1, 2))
L2 = true(3,'like', L);
```


## 🔗 See also

[false](../logical/false.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
