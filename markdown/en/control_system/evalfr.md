# evalfr

Evaluate frequency response at given frequency.

## 📝 Syntax

- frsp = evalfr(sys, f)

## 📥 Input argument

- sys - LTI model
- f - single frequency

## 📤 Output argument

- frsp - frequency response

## 📄 Description

The function<b>evalfr(sys, f)</b> computes the value of the transfer function for a given system model represented by<b>sys</b> at the complex number <b>f</b>.

## 💡 Example

```matlab
numerator = {[2, 0], [1, 3]};
denominator = {[4, 0, 3, -1], [1 , 3, 5]};
sys = tf(numerator, denominator);
z = 1 + j;
frsp = evalfr(sys, z)
```

## 🔗 See also

[bode](../control_system/bode.md), [freqresp](../control_system/freqresp.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
