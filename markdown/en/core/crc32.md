# crc32

Get crc32 checksum.

## 📝 Syntax

- hexa_hash = crc32(str)
- hexa_hash = crc32(filename)
- hexa_hash = crc32(str, '-file')
- hexa_hash = crc32(str, '-string')

## 📥 Input argument

- str - a character vector, cell of string or array of strings: content of string will be hashed.
- filename - a string: existing filename: content of the file will be hashed.
- '-file' or '-string' - force to hash as file or string content.

## 📤 Output argument

- hexa_hash - a character vector, cell of string or array of strings: hashed result (checksum).

## 📄 Description

<b>crc32</b> get crc32 checksum.

## 💡 Examples

```matlab
R = crc32('Nelson')
```

```matlab
R = crc32({'Hello', 'World'})
```

```matlab
R = crc32(["Hello"; "World"])
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'])
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-file')
```

```matlab
R = crc32([modulepath('matio', 'tests'), '/mat/test_char_array_unicode_7.4_GLNX86.mat'], '-string')
```

## 🔗 See also

[sha256](../core/sha256.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
