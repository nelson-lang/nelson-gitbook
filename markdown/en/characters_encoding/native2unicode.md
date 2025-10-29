# native2unicode

Converts bytes representation to unicode characters

## 📝 Syntax

- str = native2unicode(bytes, charset)

## 📥 Input argument

- bytes - a uint8 vector
- charset - an scalar string or vector characters array.

## 📤 Output argument

- str - an vector characters array.

## 📄 Description

<b>native2unicode</b> converts an uint8 vector to unicode characters.

<b>str = native2unicode(bytes)</b> converts an uint8 vector to unicode characters (using the native character set of the machine).

<b>str = native2unicode(bytes, charset)</b> converts an uint8 vector to unicode characters (character set <b>charset</b> instead of the native character set).

List of characters set: https://www.iana.org/assignments/character-sets/character-sets.xhtml

## 📚 Bibliography

ICU library

## 💡 Example

```matlab
native2unicode(uint8([149   208   137   188   150   188]), 'SHIFT_JIS')
```

## 🔗 See also

[unicode2native](../characters_encoding/unicode2native.md), [native2unicode](../characters_encoding/native2unicode.md), [char](../string/char.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
