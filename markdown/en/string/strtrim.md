# strtrim

Remove leading and trailing whitespace.

## 📝 Syntax

- res = strtrim(str)

## 📥 Input argument

- str - a string, a cell of strings or a string array.

## 📤 Output argument

- res - a string without leading or trailing whitespace.

## 📄 Description

<b>strtrim</b> removes leading and trailing whitespace.

<b>strtrim</b> does not remove all significant whitespace (only characters ' \t\n\r\f\v' removed).

## 💡 Examples

```matlab
strtrim(' Nel Son')
```

```matlab
strtrim(" Nel Son")
```

```matlab
strtrim([' Nel Son', char(160)])
```

## 🔗 See also

[deblank](../string/deblank.md), [toupper](../string/toupper.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
