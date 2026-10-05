# clip

Limit values to a range.

## 📝 Syntax

- Y = clip(X, lowerBound, upperBound)

## 📥 Input argument

- X - a numeric or logical array.
- lowerBound - a numeric scalar: lower limit of the range.
- upperBound - a numeric scalar: upper limit of the range.

## 📤 Output argument

- Y - the clipped array, same size as X.

## 📄 Description


<b>clip</b> limits the values of <b>X</b> to the interval <b>[lowerBound, upperBound]</b>. 

Values smaller than <b>lowerBound</b> are set to <b>lowerBound</b> and values greater than <b>upperBound</b> are set to <b>upperBound</b>. 

<b>NaN</b> values in a floating-point input are preserved.

## 💡 Example



```matlab
Y = clip([-2 0 5 10], 0, 8)
```


## 🔗 See also

[min](../../data_analysis/min.md), [max](../../data_analysis/max.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.13.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
