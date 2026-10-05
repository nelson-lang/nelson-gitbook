# betainv

Beta inverse cumulative distribution function

## 📝 Syntax

- x = betainv(p, a, b)

## 📥 Input argument

- p - real numeric array of probabilities.
- a - positive first shape parameter.
- b - positive second shape parameter.

## 📤 Output argument

- x - inverse lower-tail beta values.

## 📄 Description


<b>betainv</b> computes inverse lower-tail beta probabilities.

## 💡 Example



```matlab
p = [0.025 0.5 0.975];
x = betainv(p, 2, 5);
```


## 🔗 See also

[betacdf](../../statistics/2_probability_distributions/betacdf.md), [betapdf](../../statistics/2_probability_distributions/betapdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
