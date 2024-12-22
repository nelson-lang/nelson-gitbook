# isStringScalar

checks if input is string array with one element.

## Syntax

- r = isStringScalar(str)

## Input argument

- str - a string, string array or cell of strings.

## Output argument

- r - a logical, true if res is string type and scalar.

## Description

  <p><b>isStringScalar</b> checks if input is string array with one element.</p>

## Example

```matlab
r = isStringScalar('hello')
r = isStringScalar("hello")
r = isStringScalar(["hello", "world"])
```

## See also

[ischar](../types/ischar.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
