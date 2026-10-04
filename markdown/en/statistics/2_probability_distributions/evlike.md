# evlike

Extreme value negative log-likelihood

## 📝 Syntax

- nlogL = evlike(params, x)
- [nlogL, avar] = evlike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector: location and scale parameters.
- x - real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 2-by-2 array: approximate covariance matrix.

## 📄 Description

<b>evlike</b> evaluates the negative log-likelihood of the extreme value distribution.

## 💡 Example

```matlab
x = [-2 -1 0 1 2 3];
phat = evfit(x);
nlogL = evlike(phat, x);
```

## 🔗 See also

[evfit](../../statistics/evfit.md), [evpdf](../../statistics/evpdf.md), [evcdf](../../statistics/evcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
