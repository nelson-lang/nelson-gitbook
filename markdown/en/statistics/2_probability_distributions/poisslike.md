# poisslike

Poisson negative log-likelihood

## 📝 Syntax

- nlogL = poisslike(lambda, x)
- [nlogL, avar] = poisslike(lambda, x)

## 📥 Input argument

- lambda - nonnegative scalar: Poisson rate parameter.
- x - nonnegative integer finite real nonempty array: sample counts.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - scalar: asymptotic variance estimate.

## 📄 Description

<b>poisslike</b> returns the negative log-likelihood for Poisson distribution data and the asymptotic variance estimate.

## 💡 Example

```matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = poisslike(3, x);
```

## 🔗 See also

[poissfit](../../statistics/poissfit.md), [poisspdf](../../statistics/poisspdf.md), [poisscdf](../../statistics/poisscdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
