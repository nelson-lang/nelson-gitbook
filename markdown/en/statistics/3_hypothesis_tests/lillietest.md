# lillietest

Lilliefors goodness-of-fit test.

## 📝 Syntax

- h = lillietest(x)
- h = lillietest(x, Name, Value)
- [h, p] = lillietest(...)
- [h, p, kstat, critval] = lillietest(...)

## 📄 Description


<b>lillietest</b> performs a two-sided Lilliefors goodness-of-fit test with parameters estimated from the sample. <b>NaN</b> observations are omitted. 

Name-value arguments include <b>Alpha</b>, <b>Distribution</b>, and <b>MCTol</b>. Supported distributions are normal, exponential, and extreme value. <b>MCTol</b> is accepted for syntax compatibility; this implementation uses a deterministic approximation.

## 💡 Example



```matlab
x = [-1 -0.5 0 0.5 1];
[h, p, kstat, critval] = lillietest(x)
```


## 🔗 See also

[jbtest](../../statistics/3_hypothesis_tests/jbtest.md), [kstest](../../statistics/3_hypothesis_tests/kstest.md), [chi2gof](../../statistics/3_hypothesis_tests/chi2gof.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
