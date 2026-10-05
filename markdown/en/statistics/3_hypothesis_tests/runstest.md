# runstest

Runs test for randomness.

## 📝 Syntax

- h = runstest(x)
- h = runstest(x, v)
- h = runstest(x, 'ud')
- h = runstest(..., Name, Value)
- [h, p, stats] = runstest(...)

## 📄 Description


<b>runstest</b> tests whether values in a vector appear in random order. The default test counts runs above and below the mean of <b>x</b>. A scalar <b>v</b> can be supplied as a reference value. The <b>ud</b> mode counts runs up and down. 

Name-value arguments include <b>Alpha</b>, <b>Method</b>, and <b>Tail</b>. <b>NaN</b> values and values exactly equal to the reference are omitted.

## 💡 Example



```matlab
x = [1 2 3 4 5 0 -1 -2];
[h, p, stats] = runstest(x)
```


## 🔗 See also

[signtest](../../statistics/3_hypothesis_tests/signtest.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
