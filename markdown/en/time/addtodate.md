# addtodate

Modify date number by field.

## 📝 Syntax

- r = addtodate(d, q, f)

## 📥 Input argument

- d - serial datenum.
- q - quantile to add to date
- f - 'year', 'month', 'day', 'hour', 'minute', 'second', or 'millisecond.

## 📤 Output argument

- r - date number.

## 📄 Description

<b>r = addtodate(d, q, f)</b> adds quantity <b>q</b> to the indicated date field <b>f</b> of a scalar serial date number <b>d</b>, returning the updated date number <b>r</b>.

## 💡 Example

```matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
```

## 🔗 See also

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
