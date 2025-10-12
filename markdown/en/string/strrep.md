# strrep

Replaces strings in another.

## Syntax

- res = strrep(str, old, new)

## Input argument

- str - a string, string array or cell of strings.
- old - a string, string array or cell of strings to find.
- new - a string, string array or cell of strings.

## Output argument

- res - a string, string array or cell of strings.

## Description

<p>
            replace replaces strings in another.</p>

<p>
                replace and strrep replace strings but replace is recommended.</p>

## Example

```matlab
r = strrep('This is a string.', 'is', 'is not')
r = strrep({'cccc','ccbbcca'},{'cc','bb'},{'cc'})
r = strrep("This is a string.", "is", 'is not')
```

## See also

[replace](../string/replace.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
