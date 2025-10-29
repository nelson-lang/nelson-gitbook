# weekday

Return the day of week.

## 📝 Syntax

- number = weekday(D)
- [number, name] = weekday(D)
- [number, name] = weekday(D, form)
- [number, name] = weekday(D, language)
- [number, name] = weekday(D, form, language)

## 📥 Input argument

- D - Serial date numbers or text representing dates and times (vector, matrix, character vector, cell array of character vectors, string array or character array).
- form - a string: 'short' (default) or 'long'.
- language - a string: 'en_US' (default) or 'local'.

## 📤 Output argument

- number - array of integers values in the range [1, 7].
- name - character array. if 'local' output uses current local if day name is available as translation.

## 📄 Description

<b>dayweek</b> returns the day of the week as a number in <b>number</b> and as a string in <b>name</b>.

## 💡 Example

```matlab

[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'en_US')
[DayNumber, DayName] = weekday(datenum('12-21-2012'), 'long', 'local')

```

## 🔗 See also

[datevec](../time/datevec.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
