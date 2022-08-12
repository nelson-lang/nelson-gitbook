# ispc

Checks if version is for Windows platform.

## Syntax

- s = ispc()

## Output argument

- s - a logical: true if it is a Windows platform.

## Description

  <p><b>ispc</b> checks if it is a Windows platform.</p>

## Example

```matlab
if ispc
  disp('Your platform is Windows')
else
  disp('Your platform is not Windows')
end
```

## See also

[isunix](isunix.md), [ismac](ismac.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
