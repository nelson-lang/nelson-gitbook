# expcdf

Exponential cumulative distribution function

## 📝 Syntax

- p = expcdf(x)
- p = expcdf(x, mu)
- p = expcdf(x, mu, 'upper')

## 📥 Input argument

- x - real numeric array.
- mu - positive mean parameter, default 1.

## 📤 Output argument

- p - cumulative probabilities or upper-tail probabilities.

## 📄 Description


<b>expcdf</b> computes lower-tail exponential probabilities by default and upper-tail probabilities with <b>'upper'</b>.

## 💡 Example



```matlab
x = [0 0.5 1 2];
p = expcdf(x, 3);
q = expcdf(x, 3, 'upper');
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
