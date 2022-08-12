# isunix

Checks if version is for GNU Linux or Unix platform.

## Syntax

- s = isunix()

## Output argument

- s - a logical: true if it is a GNU Linux or Unix platform.

## Description

  <p><b>isunix</b> checks if it is a GNU Linux or Unix platform.</p>
  <p>MacOs platform is also detected as a GNU Linux or Unix platform.</p>

## Example

```matlab
if isunix
  disp('Your platform is Unix or Linux')
else
  disp('Your platform is Unix or Linux')
end
```

## See also

[ispc](ispc.md), [ismac](ismac.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
