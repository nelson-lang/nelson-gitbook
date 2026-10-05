# movmedian

Moving median.

## 📝 Syntax

- R = movmedian(A, window)
- R = movmedian(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving median.

## 📄 Description


<b>movmedian</b> computes median values over a centered moving window.

## 💡 Example



```matlab
A = [1 2 8 4 5];
R = movmedian(A, 3)
```


## 🔗 See also

[median](../statistics/1_descriptive_statistics_visualization/median.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
