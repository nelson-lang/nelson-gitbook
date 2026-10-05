# binostat

Binomial mean and variance

## 📝 Syntax

- [m, v] = binostat(n, p)

## 📥 Input argument

- n - nonnegative integer scalar or array: number of trials.
- p - scalar or array in the range [0, 1]: probability of success.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description


<b>binostat</b> returns the mean and variance of the binomial distribution.

## 💡 Example



```matlab
[m, v] = binostat([10 20], [0.25 0.5]);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
