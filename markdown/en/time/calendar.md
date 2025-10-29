# calendar

Calendar.

## 📝 Syntax

- calendar()
- c = calendar()
- c = calendar(d)
- c = calendar(y, m)

## 📥 Input argument

- d - an integer value: a serial date number.
- y - an integer value: 'year' desired [1400, 9999].
- m - an integer value: 'month' desired [1, 12].

## 📤 Output argument

- c - a 6x7 matrix.

## 📄 Description

<b>calendar()</b> returns the currently monthly calendar.

If no output arguments are specified,the calendar is displayed on the screen instead of returning a matrix 6x7.

## 💡 Example

```matlab
calendar()
c = calendar(1973, 8)
c = calendar(datenum(1973, 8, 4))
```

## 🔗 See also

[datenum](../time/datenum.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
