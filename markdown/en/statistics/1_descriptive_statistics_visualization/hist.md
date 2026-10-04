# hist

Histogram bin counts.

## 📝 Syntax

- hist(Y)
- hist(Y, nbins)
- hist(Y, centers)
- n = hist(...)
- [n, c] = hist(...)

## 📥 Input argument

- Y - a numeric vector.
- nbins - a scalar: number of equally spaced bins (default 10).
- centers - a vector of bin centers.

## 📤 Output argument

- n - the number of elements in each bin.
- c - the bin centers.

## 📄 Description

<b>hist</b> distributes the elements of <b>Y</b> into bins and returns the bin counts.

Two modules carry a <b>hist</b>: this one and the one in the <b>graphics</b> module. Both count their bins the same way, so the same call answers the same counts either way. The graphics one takes over as soon as that module is loaded: it is the one that draws, and the only one that accepts a designated axes. This one is what answers where graphics is not loaded, as in <b>nelson-cli</b>, and it only counts: asking it to draw reports that the graphics module is needed.

This is a legacy function; <b>histogram</b> and <b>histcounts</b> are preferred for new code.

## 💡 Example

```matlab
[n, c] = hist([2 4 4 4 5 5 7 9], 3)
```

## 🔗 See also

[hist (graphics)](../../graphics/hist.md), [histc](../../elementary_functions/histc.md), [tabulate](../../statistics/tabulate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.14.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
