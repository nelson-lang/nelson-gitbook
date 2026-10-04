# geoinv

Geometric inverse cumulative distribution function

## 📝 Syntax

- x = geoinv(y, p)

## 📥 Input argument

- y - real scalar or array: probability values.
- p - scalar or array in the range [0, 1]: probability of success.

## 📤 Output argument

- x - array: inverse probability values.

## 📄 Description

<b>geoinv</b> evaluates geometric inverse cumulative probabilities element by element.

## 💡 Example

```matlab
y = [0 0.25 0.9];
x = geoinv(y, 0.25);
```

## 🔗 See also

[geopdf](../../statistics/geopdf.md), [geocdf](../../statistics/geocdf.md), [geornd](../../statistics/geornd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
