# filtfilt

Forward and reverse digital filtering.

## 📝 Syntax

- Y = filtfilt(B, A, X)

## 📥 Input argument

- B, A - filter coefficients.
- X - input signal.

## 📤 Output argument

- Y - filtered signal.

## 📄 Description


<b>filtfilt</b> filters forward, reverses the result, filters again, and reverses back.

## 💡 Example



```matlab

y = filtfilt([1 1] / 2, 1, [1 2 3 4]);

```


## 🔗 See also

[filter](../../elementary_functions/7_indexing_dimensions/filter.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
