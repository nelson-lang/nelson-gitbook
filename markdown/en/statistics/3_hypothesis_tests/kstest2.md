# kstest2

Two-sample Kolmogorov-Smirnov test

## 📝 Syntax

- h = kstest2(x1, x2)
- h = kstest2(x1, x2, 'Alpha', alpha)
- h = kstest2(x1, x2, 'Tail', tail)
- [h, p, ks2stat] = kstest2(...)

## 📥 Input argument

- x1 - real vector: first sample.
- x2 - real vector: second sample.
- alpha - scalar in (0,1), 0.05 by default: significance level.
- tail - 'unequal', 'larger', or 'smaller'.

## 📤 Output argument

- h - logical scalar: test decision.
- p - asymptotic p-value.
- ks2stat - two-sample test statistic.

## 📄 Description


<b>kstest2</b> compares the empirical distributions of two sample vectors. 

NaN sample values are omitted independently before sorting and computing the empirical distributions.

## 💡 Example



```matlab
x1 = [1 2 3 4 5];
x2 = [2 3 4 6 8 10];
[h, p, ks2stat] = kstest2(x1, x2);
[h2, p2] = kstest2(x1, x2, 'Tail', 'larger');
```


## 🔗 See also

[kstest](../../statistics/3_hypothesis_tests/kstest.md), [ttest2](../../statistics/3_hypothesis_tests/ttest2.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
