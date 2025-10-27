# deblank

Remove trailing whitespace.

## 📝 Syntax

- res = deblank(str)

## 📥 Input argument

- str - a string, a cell of strings or a string array.

## 📤 Output argument

- res - a string without trailing whitespace.

## 📄 Description

<b>deblank</b> removes trailing whitespace.

<b>deblank</b> does not remove all significant whitespace (only characters ' \t\n\r\f\v' removed).

## 💡 Examples

```matlab
deblank(' Nel Son ')
```

```matlab
deblank(" Nel Son ")
```

```matlab
deblank([' Nel Son ', char(160)])
```

## 🔗 See also

[strtrim](../string/strtrim.md), [toupper](../string/toupper.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
