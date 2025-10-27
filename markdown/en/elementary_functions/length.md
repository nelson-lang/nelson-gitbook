# length

Length of an object.

## 📝 Syntax

- l = length(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- l - the length of the largest array dimension in M.

## 📄 Description

For matrix or N-dimensional array, <b>length</b> returns the number of elements along the largest dimension. For empty object, <b>length</b> returns 0. For scalar, <b>length</b> returns 1. For a vector, <b>length</b> returns the number of elements.

## 💡 Example

```matlab
length(ones(3, 0))
length(3)
length([1 2 3 4 5])
length(ones(3, 4, 5))
```

## 🔗 See also

[size](../elementary_functions/size.md), [numel](../elementary_functions/numel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
