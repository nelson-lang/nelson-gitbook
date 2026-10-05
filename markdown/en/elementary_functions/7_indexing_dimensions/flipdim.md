# flipdim

Flip array along specified dimension

## 📝 Syntax

- B = flipdim(A, dim)

## 📥 Input argument

- A - an array
- dim - an positive integer value

## 📤 Output argument

- B - flipped array.

## 📄 Description


<b>flipdim</b> return an new array of <b>A</b> flipped about the dimension <b>dim</b>. 

<b>flipdim</b> is similar to <b>flip</b> and available for compatibility with old existing scripts.

## 💡 Example



```matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
```


## 🔗 See also

[flip](../../elementary_functions/7_indexing_dimensions/flip.md), [flipud](../../elementary_functions/7_indexing_dimensions/flipud.md), [fliplr](../../elementary_functions/7_indexing_dimensions/fliplr.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
