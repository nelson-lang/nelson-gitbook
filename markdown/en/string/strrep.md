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
            <b>replace</b> replaces strings in another.</p>
<p>
                <b>replace</b> and <b>strrep</b> replace strings but <b>replace</b> is recommended.</p>

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
