# knnsearch

Find k-nearest neighbors.

## 📝 Syntax

- idx = knnsearch(X, Y)
- idx = knnsearch(X, Y, Name, Value)
- [idx, D] = knnsearch(...)

## 📄 Description

<b>knnsearch</b> finds nearest rows of <b>X</b> for each query row of <b>Y</b> using an exhaustive native search.

Supported options include K, Distance, IncludeTies, NSMethod, SortIndices, P, Scale, Cov, BucketSize, and CacheSize. When IncludeTies is true, outputs are cell arrays.

## 💡 Example

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = knnsearch(X, Y, 'K', 2)
```

## 🔗 See also

[pdist](../../statistics/pdist.md), [pdist2](../../statistics/pdist2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
