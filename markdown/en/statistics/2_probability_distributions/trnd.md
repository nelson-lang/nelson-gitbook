# trnd

Student t random numbers

## 📝 Syntax

- r = trnd(nu)
- r = trnd(nu, sz)
- r = trnd(nu, sz1, ..., szN)

## 📥 Input argument

- nu - positive scalar or array: degrees of freedom.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>trnd</b> generates Student t distributed random values.

## 💡 Example



```matlab
rng(0);
r = trnd(5, 2, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
