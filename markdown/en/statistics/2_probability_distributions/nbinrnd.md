# nbinrnd

Negative binomial random numbers

## 📝 Syntax

- rout = nbinrnd(r, p)
- rout = nbinrnd(r, p, sz)
- rout = nbinrnd(r, p, sz1, ..., szN)

## 📥 Input argument

- r - positive scalar or array: number of successes.
- p - scalar or array in the range [0, 1]: success probability.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- rout - array: random values.

## 📄 Description


<b>nbinrnd</b> generates negative binomial distributed random values.

## 💡 Example



```matlab
rng(0);
rout = nbinrnd(3, 0.4, 2, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
