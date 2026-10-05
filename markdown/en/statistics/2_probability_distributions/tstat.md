# tstat

Student t mean and variance

## 📝 Syntax

- [m, v] = tstat(nu)

## 📥 Input argument

- nu - positive scalar or array: degrees of freedom.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description


<b>tstat</b> returns the mean and variance of the Student t distribution.

## 💡 Example



```matlab
[m, v] = tstat([1.5 3 Inf]);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
