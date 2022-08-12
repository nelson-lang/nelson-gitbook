# intmax

Return the largest integer that can be represented in an integer type.

## Syntax

- imax = intmax()
- imax = intmax(classname)

## Input argument

- classname - a string: by default: int32

## Output argument

- imax - largest integer

## Description

  <p><b>imax = intmax(classname)</b>the largest integer that can be represented in an integer type.</p>
  <p>Supported values for the string <b>classname</b> are:</p>
  <p>'int8'</p>
  <p>'uint8'</p>
  <p>'int16'</p>
  <p>'uint16'</p>
  <p>'int32'</p>
  <p>'uint32'</p>
  <p>'int64'</p>
  <p>'uint64'</p>

## Examples

```matlab
A = intmax('int64')
res = class(A)
```

```matlab
A = intmax('uint32')
res = class(C)
```

## See also

[intmin](intmin.md), [class](class.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
