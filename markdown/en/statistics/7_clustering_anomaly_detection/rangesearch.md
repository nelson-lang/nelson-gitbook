# rangesearch

Find all neighbors within a specified distance.

## 📝 Syntax

- idx = rangesearch(X, Y, r)
- idx = rangesearch(X, Y, r, Name, Value)
- [idx, D] = rangesearch(...)

## 📄 Description

<b>rangesearch</b> finds all rows of <b>X</b> whose distance to each query row of <b>Y</b> is not greater than <b>r</b>.

The search is exhaustive and native. Outputs are column cell arrays. Supported options include Distance, NSMethod, SortIndices, P, Scale, Cov, BucketSize, and CacheSize.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = rangesearch(X, Y, 1.1)
```

## 🔗 See also

[knnsearch](../../statistics/knnsearch.md), [pdist](../../statistics/pdist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
