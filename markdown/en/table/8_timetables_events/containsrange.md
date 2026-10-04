# containsrange

Determine if timetable row times contain a time range.

## 📝 Syntax

- [tf, tfRow] = containsrange(TT, timeSpec)

## 📥 Input argument

- TT - Input timetable.
- timeSpec - Time range specification.

## 📤 Output argument

- tf - Logical scalar.
- tfRow - Logical row selector.

## 📄 Description

<b>containsrange</b> tests whether timetable row times cover the specified time range.

## 💡 Example

```matlab
TT = timetable(seconds([1; 2; 3]), [10; 20; 30], 'VariableNames', {'A'});
containsrange(TT, seconds([1.5; 2.5]))

```

## 🔗 See also

[withinrange](../../table/withinrange.md), [overlapsrange](../../table/overlapsrange.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
