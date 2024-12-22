# isstatic

Checks if model is static or dynamic.

## Syntax

- res = isdt(sys)

## Input argument

- sys - a lti model.

## Output argument

- res - a logical: true if model is static.

## Description

  <p>Checks if model is static.</p>

## Example

```matlab
sys = tf(magic(3));
isstatic(sys)
```

## See also

[isct](isct.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
