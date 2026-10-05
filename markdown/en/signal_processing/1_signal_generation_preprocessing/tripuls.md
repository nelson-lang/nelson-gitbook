# tripuls

Sampled triangular pulse.

## 📝 Syntax

- Y = tripuls(T)
- Y = tripuls(T, width)
- Y = tripuls(T, width, skew)

## 📥 Input argument

- T - sample locations.
- width - pulse width.
- skew - peak position parameter.

## 📤 Output argument

- Y - pulse samples.

## 📄 Description


<b>tripuls</b> returns a triangular pulse with optional skew.

## 💡 Example



```matlab

y = tripuls([-0.5 0 0.5], 1);

```


## 🔗 See also

[rectpuls](../../signal_processing/1_signal_generation_preprocessing/rectpuls.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
