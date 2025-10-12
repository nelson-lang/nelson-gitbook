# unicode2native

Converts unicode characters representation to bytes

## Syntax

- bytes = unicode2native(str, charset)

## Input argument

- str - an scalar string or vector characters array.
- charset - an scalar string or vector characters array.

## Output argument

- bytes - a uint8 vector

## Description

<p>
            unicode2native converts unicode characters to an numeric array.</p>

<p>
                bytes = unicode2native(str) converts unicode characters to an numeric array (the native character set of the machine).</p>

<p>
                    bytes = unicode2native(str, charset) converts unicode characters to an numeric array (character set charset instead of the native character set).</p>

<p>List of characters set: http://www.iana.org/assignments/character-sets/character-sets.xhtml</p>

## Bibliography

ICU library

## Example

```matlab
R = unicode2native('片仮名', 'SHIFT_JIS')
```

## See also

[native2unicode](../characters_encoding/native2unicode.md), [char](../string/char.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
