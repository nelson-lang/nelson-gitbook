# movmean

Moving mean.

## 📝 Syntax

- R = movmean(A, window)
- R = movmean(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving mean.

## 📄 Description


<b>movmean</b> computes mean values over a centered moving window.

## 💡 Example



```matlab
A = [1 2 8 4 5];
R = movmean(A, 3)
```


## 🔗 See also

[mean](../statistics/1_descriptive_statistics_visualization/mean.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
