# sigma

Singular value response of an LTI model.

## 📝 Syntax

- sigma(sys)
- sv = sigma(sys, w)
- [sv, wout] = sigma(sys, w)

## 📥 Input argument

- sys - LTI model.
- w - Frequency vector in rad/s.

## 📤 Output argument

- sv - Singular values for each frequency.
- wout - Frequency vector.

## 📄 Description

<b>sigma</b> computes singular values of the frequency response.

## 💡 Example

```matlab
sys = tf(2, [1 1]); [sv, w] = sigma(sys, [1 2 4])
```

## 🔗 See also

[freqresp](../../control_system/freqresp.md), [bode](../../control_system/bode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
