# rot90

Rotate array 90 degrees.

## 📝 Syntax

- B = rot90(A)
- B = rot90(A, k)

## 📥 Input argument

- A - an array
- k - an positive integer value: Rotation constant.

## 📤 Output argument

- B - rotated array.

## 📄 Description

<b>B = rot90(A, k)</b> rotates array <b>A</b> counter clockwise by <b>k \* 90</b> degrees, with <b>k</b> is an integer value.

Consider <b>flip</b> function to flip arrays in any dimension.

## 💡 Example

```matlab
x = eye(3, 2);
y = rot90(x, 0)
y = rot90(x, 1)
y = rot90(x, 2)
y = rot90(x, 3)
```

## 🔗 See also

[flipud](../elementary_functions/flipud.md), [fliplr](../elementary_functions/fliplr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
