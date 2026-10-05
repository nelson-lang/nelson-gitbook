# nbinstat

Negative binomial mean and variance

## 📝 Syntax

- m = nbinstat(r, p)
- [m, v] = nbinstat(r, p)

## 📥 Input argument

- r - positive scalar or array: number of successes.
- p - scalar or array in the range [0, 1]: success probability.

## 📤 Output argument

- m - mean values.
- v - variance values.

## 📄 Description


<b>nbinstat</b> computes mean and variance for the negative binomial distribution.

## 💡 Example



```matlab
[m, v] = nbinstat([1 3], [0.5 0.4]);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
