# movmax

Moving maximum.

## 📝 Syntax

- R = movmax(A, window)
- R = movmax(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving maximum.

## 📄 Description


<b>movmax</b> computes maximum values over a centered moving window.

## 💡 Example



```matlab
A = [1 2 8 4 5];
R = movmax(A, 3)
```


## 🔗 See also

[max](../data_analysis/max.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
