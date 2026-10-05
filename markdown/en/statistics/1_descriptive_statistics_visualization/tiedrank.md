# tiedrank

Ranks with average values for ties.

## 📝 Syntax

- R = tiedrank(X)
- [R, tieadj] = tiedrank(X)
- [R, tieadj] = tiedrank(X, kendall)
- [R, tieadj] = tiedrank(X, kendall, bidirectional)

## 📄 Description


<b>tiedrank</b> computes ranks along the first dimension and assigns average ranks to tied values. <b>NaN</b> values are ignored and keep <b>NaN</b> ranks. 

When <b>kendall</b> is true, <b>tieadj</b> contains the three tie-adjustment terms used by Kendall rank correlation. When <b>bidirectional</b> is true, ranks are assigned from both ends of the sorted data.

## 💡 Example



```matlab
X = [-2 1 3 1 4];
[R, tieadj] = tiedrank(X)
```


## 🔗 See also

[ranksum](../../statistics/3_hypothesis_tests/ranksum.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [friedman](../../statistics/3_hypothesis_tests/friedman.md), [kruskalwallis](../../statistics/3_hypothesis_tests/kruskalwallis.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
