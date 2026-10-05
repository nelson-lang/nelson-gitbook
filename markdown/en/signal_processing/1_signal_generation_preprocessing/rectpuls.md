# rectpuls

Sampled rectangular pulse.

## 📝 Syntax

- Y = rectpuls(T)
- Y = rectpuls(T, width)

## 📥 Input argument

- T - sample locations.
- width - pulse width.

## 📤 Output argument

- Y - pulse samples.

## 📄 Description


<b>rectpuls</b> returns one inside the pulse interval and zero outside it.

## 💡 Example



```matlab

y = rectpuls([-0.5 0 0.5], 1);

```


## 🔗 See also

[tripuls](../../signal_processing/1_signal_generation_preprocessing/tripuls.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
