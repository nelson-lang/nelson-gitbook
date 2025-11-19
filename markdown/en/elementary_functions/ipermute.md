# ipermute

Inverse permute array dimensions.

## 📝 Syntax

- R = ipermute(A, order)

## 📥 Input argument

- A - an array.
- order - Dimension order: row vector

## 📤 Output argument

- R - result array rearranged with new dimension order.

## 📄 Description

<b>ipermute</b> permutes the dimensions of an array (in inverse order of<b>permute</b>).

## 💡 Example

```matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
x2 = ipermute(y,[3 1 2])
```

## 🔗 See also

[permute](../elementary_functions/permute.md), [reshape](../elementary_functions/reshape.md), [transpose](../operators/transpose.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
