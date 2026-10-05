# bounds

Smallest and largest array elements.

## 📝 Syntax

- [smallest, largest] = bounds(A)
- [smallest, largest] = bounds(A, d)
- [smallest, largest] = bounds(A, flag)

## 📥 Input argument

- A - input array.
- d - dimension to operate along: positive integer scalar.
- flag - optional argument forwarded to min and max.

## 📤 Output argument

- smallest - Smallest values.
- largest - Largest values.

## 📄 Description


<b>bounds</b> returns the smallest and largest elements of A along the selected dimension.

## 💡 Example



```matlab
A = [3 7 2; 9 1 5];
[s, l] = bounds(A)
```


## 🔗 See also

[min](../data_analysis/min.md), [max](../data_analysis/max.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
