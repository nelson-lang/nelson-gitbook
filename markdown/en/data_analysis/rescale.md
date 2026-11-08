# rescale

Scale array elements to a fixed interval.

## 📝 Syntax

- Y = rescale(X)
- Y = rescale(X, a, b)
- Y = rescale(..., 'InputMin', lo, 'InputMax', hi)

## 📥 Input argument

- X - a numeric array.
- a, b - the bounds of the output interval (default <b>0</b> and <b>1</b>).
- lo, hi - optional input limits mapped to <b>a</b> and <b>b</b>.

## 📤 Output argument

- Y - the rescaled array, same size as <b>X</b>.

## 📄 Description


<b>Y = rescale(X)</b> scales the entries of <b>X</b> to the interval <b>[0, 1]</b>. 

<b>Y = rescale(X, a, b)</b> scales the entries to the interval <b>[a, b]</b>.

## 💡 Example



```matlab
Y = rescale([1 2 3 4 5])
Z = rescale([1 2 3 4 5], 0, 10)
```


## 🔗 See also

[bounds](../data_analysis/bounds.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
