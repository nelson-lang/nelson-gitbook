# KDTreeSearcher

Nearest neighbor searcher object.

## 📝 Syntax

- Mdl = KDTreeSearcher(X)
- Mdl = KDTreeSearcher(X, Name, Value)
- [idx, D] = knnsearch(Mdl, Y, Name, Value)
- [idx, D] = rangesearch(Mdl, Y, radius, Name, Value)

## 📥 Input argument

- X - the data to search, as a real numeric matrix with one point per row.
- Name, Value - options: <b>Distance</b> (default <b>'euclidean'</b>), <b>P</b> (Minkowski exponent) and <b>BucketSize</b>.

## 📤 Output argument

- Mdl - a KDTreeSearcher object holding the data and the search options.

## 📄 Description


<b>KDTreeSearcher</b> stores a set of points and the distance metric used to query them, so that nearest neighbor searches can be run against the same data with <b>knnsearch</b> and <b>rangesearch</b>. The object exposes the properties <b>X</b>, <b>Distance</b>, <b>DistParameter</b> and <b>BucketSize</b>. 

The searches delegate to the <b>knnsearch</b> and <b>rangesearch</b>functions, forwarding the distance metric stored on the object.

## 💡 Example



```matlab
X = [0 0; 1 0; 0 2; 4 4];
Mdl = KDTreeSearcher(X);
[idx, D] = knnsearch(Mdl, [0 1; 3 4], 'K', 2)
```


## 🔗 See also

[knnsearch](../../statistics/7_clustering_anomaly_detection/knnsearch.md), [rangesearch](../../statistics/7_clustering_anomaly_detection/rangesearch.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
