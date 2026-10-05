# repmat

Replicate and tile an array.

## 📝 Syntax

- R = repmat(A, m)
- R = repmat(A, m, n)
- R = repmat(A, m, n, p …)
- R = repmat(A, [m n])
- R = repmat(A, [m n p …])

## 📥 Input argument

- A - an array.
- m, n, p … - a value: integer

## 📤 Output argument

- R - result array form by tiling.

## 📄 Description


<b>repmat</b> replicates and tiles an array. 

If any resulting dimension is zero, the output is empty. The other dimensions and the input class are preserved. For example, repmat(zeros(0, 3), 2, 4) has size [0, 12].

## 💡 Examples



```matlab
repmat(1:5, 2)
```


```matlab
repmat(1:5, [2 3])
```


```matlab
repmat(1:5, [2 3 4])
```


## 🔗 See also

[reshape](../../elementary_functions/1_array_creation_shape/reshape.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
