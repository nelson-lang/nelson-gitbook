# expinv

Exponential inverse cumulative distribution function

## 📝 Syntax

- x = expinv(p)
- x = expinv(p, mu)

## 📥 Input argument

- p - real numeric array of probabilities.
- mu - positive mean parameter, default 1.

## 📤 Output argument

- x - inverse lower-tail exponential values.

## 📄 Description


<b>expinv</b> computes inverse lower-tail exponential probabilities.

## 💡 Example



```matlab
p = [0.025 0.5 0.975];
x = expinv(p, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
