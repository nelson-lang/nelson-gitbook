# tfdata

Access transfer function model data.

## 📝 Syntax

- [numerator, denominator] = tfdata(sys)
- [numerator, denominator, Ts] = tfdata(sys)
- sys = tf(numerator, denominator)
- sys = tf(numerator, denominator, Ts)

## 📥 Input argument

- sys - a LTI model.

## 📤 Output argument

- numerator - polynomial coefficients: a row vector or as a cell array of row vectors.
- denominator - polynomial coefficients: a row vector or as a cell array of row vectors.
- Ts - Sampling time Ts, default: in seconds

## 📄 Description

The function <b>tfdata(sys)</b> retrieves the matrix data <b>numerator</b>, <b>denominator</b> from the transfer function model (LTI array) represented by <b>sys</b>.

If <b>sys</b> is initially in the form of a state-space model (LTI array), it is automatically converted to the transfer function representation before extracting the matrix data.

## 💡 Example

```matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
[num, den] = tfdata(sys)
```

## 🔗 See also

[tf](../control_system/tf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
