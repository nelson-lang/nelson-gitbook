# ranksum

Wilcoxon rank sum test.

## 📝 Syntax

- p = ranksum(x, y)
- p = ranksum(x, y, Name, Value)
- [p, h, stats] = ranksum(...)

## 📄 Description


<b>ranksum</b> performs a two-sample rank sum test. <b>NaN</b> observations are omitted from each input vector. 

Name-value arguments include <b>Alpha</b>, <b>Tail</b>, and <b>Method</b>. Supported tails are both, right, and left. Supported methods are auto, exact, and approximate.

## 💡 Example



```matlab
x = [1 3 5];
y = [2 4 6];
[p, h, stats] = ranksum(x, y)
```


## 🔗 See also

[kruskalwallis](../../statistics/3_hypothesis_tests/kruskalwallis.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
