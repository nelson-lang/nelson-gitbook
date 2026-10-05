# chi2rnd

Chi-square random numbers

## 📝 Syntax

- r = chi2rnd(nu)
- r = chi2rnd(nu, sz)
- r = chi2rnd(nu, sz1, ..., szN)

## 📥 Input argument

- nu - positive scalar or array: degrees of freedom.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>chi2rnd</b> generates chi-square distributed random values.

## 💡 Example



```matlab
rng(0);
r = chi2rnd(4, 2, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
