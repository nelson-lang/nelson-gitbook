# unidrnd

Discrete uniform random numbers

## 📝 Syntax

- r = unidrnd(n)
- r = unidrnd(n, sz)
- r = unidrnd(n, sz1, ..., szN)

## 📥 Input argument

- n - positive integer scalar or array: maximum value.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random integer values.

## 📄 Description


<b>unidrnd</b> generates discrete uniform random integers from 1 to <b>n</b>.

## 💡 Example



```matlab
rng(0);
r = unidrnd(5, 2, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
