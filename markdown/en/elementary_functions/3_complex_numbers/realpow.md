# realpow

Element-wise power with real-only result.

## 📝 Syntax

- Z = realpow(X, Y)

## 📥 Input argument

- X - Real base values.
- Y - Real exponent values.

## 📤 Output argument

- Z - result of X .^ Y when all values are real.

## 📄 Description


<b>realpow</b> computes element-wise powers and returns an error if an input or the result is complex. 

<b>X</b> and <b>Y</b> must have compatible sizes for element-wise power.

## 💡 Example



```matlab
X = -2 * ones(3, 3);
Y = pascal(3);
Z = realpow(X, Y)
```


## 🔗 See also

[power](../../operators/power.md), [sqrt](../../elementary_functions/2_elementary_math/sqrt.md), [log](../../elementary_functions/2_elementary_math/log.md), [nthroot](../../elementary_functions/2_elementary_math/nthroot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
