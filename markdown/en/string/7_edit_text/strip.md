# strip

Remove leading and trailing characters from text.

## 📝 Syntax

- res = strip(str)
- res = strip(str, side)
- res = strip(str, side, stripCharacter)

## 📥 Input argument

- str - character array, string scalar, string array, or cell array of character vectors.
- side - optional side selector: leading, trailing, left, right, or both when supported.
- stripCharacter - optional character to remove instead of whitespace.

## 📤 Output argument

- res - text with selected leading or trailing characters removed.

## 📄 Description


strip removes leading and trailing whitespace from text by default. 

Optional arguments can select a side and the character to remove when supported by the string module.

## Used function(s)


    strtrim
  

## 💡 Example

Remove leading and trailing whitespace from a string.

```matlab
txt = strip("  Nel Son  ")
```


## 🔗 See also

[strtrim](../../string/7_edit_text/strtrim.md), [deblank](../../string/7_edit_text/deblank.md), [lower](../../string/7_edit_text/lower.md), [upper](../../string/7_edit_text/upper.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
