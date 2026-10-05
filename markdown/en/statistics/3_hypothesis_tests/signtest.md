# signtest

Sign test.

## 📝 Syntax

- p = signtest(x)
- p = signtest(x, y)
- p = signtest(x, m)
- p = signtest(x, y, Name, Value)
- [p, h, stats] = signtest(...)

## 📄 Description


<b>signtest</b> performs a sign test for a median or paired difference. If <b>y</b> is omitted, values of <b>x</b> are tested against zero. If <b>y</b> is a scalar, values of <b>x</b> are tested against that scalar. 

Name-value arguments include <b>Alpha</b>, <b>Method</b>, and <b>Tail</b>. Zero differences and <b>NaN</b> values are omitted.

## 💡 Example



```matlab
x = [1 2 -3 4 -5];
[p, h, stats] = signtest(x)
```


## 🔗 See also

[signrank](../../statistics/3_hypothesis_tests/signrank.md), [ranksum](../../statistics/3_hypothesis_tests/ranksum.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
