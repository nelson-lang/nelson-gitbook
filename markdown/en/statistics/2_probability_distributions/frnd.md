# frnd

F random numbers

## 📝 Syntax

- r = frnd(v1, v2)
- r = frnd(v1, v2, sz)
- r = frnd(v1, v2, sz1, ..., szN)

## 📥 Input argument

- v1 - positive scalar or array: numerator degrees of freedom.
- v2 - positive scalar or array: denominator degrees of freedom.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>frnd</b> generates F distributed random values.

## 💡 Example



```matlab
rng(0);
r = frnd(5, 7, 2, 3);
```


## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
