# nativecharset

Find all charset matches that appear to be consistent with the input

## 📝 Syntax

- ce = nativecharset(bytes)

## 📥 Input argument

- bytes - a uint8 vector, or string or row characters array

## 📤 Output argument

- ce - a cell of strings.

## 📄 Description

<b>nativecharset</b> find all charset matches that appear to be consistent with the input, returning a cell of string with results.

The results are ordered with the best quality match first.

List of characters set: https://www.iana.org/assignments/character-sets/character-sets.xhtml

## 📚 Bibliography

ICU library

## 💡 Example

```matlab
C = uint8([194   232   240   242   243   224   235   252   237   224   255]);
nativecharset(R)
```

## 🔗 See also

[unicode2native](../characters_encoding/unicode2native.md), [char](../string/char.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
