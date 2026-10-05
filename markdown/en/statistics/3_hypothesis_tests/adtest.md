# adtest

Anderson-Darling goodness-of-fit test.

## 📝 Syntax

- h = adtest(x)
- h = adtest(x, Name, Value)
- [h, p] = adtest(...)
- [h, p, adstat, cv] = adtest(...)

## 📄 Description


<b>adtest</b> performs an Anderson-Darling goodness-of-fit test. <b>NaN</b> observations are omitted. 

Name-value arguments include <b>Distribution</b>, <b>Alpha</b>, <b>MCTol</b>, and <b>Asymptotic</b>. Supported distribution families are norm, exp, ev, logn, and weibull. <b>MCTol</b> is accepted for syntax compatibility; this implementation uses a deterministic approximation.

## 💡 Example



```matlab
x = [1 2 3 4 5];
[h, p, adstat, cv] = adtest(x)
```


## 🔗 See also

[jbtest](../../statistics/3_hypothesis_tests/jbtest.md), [lillietest](../../statistics/3_hypothesis_tests/lillietest.md), [kstest](../../statistics/3_hypothesis_tests/kstest.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
