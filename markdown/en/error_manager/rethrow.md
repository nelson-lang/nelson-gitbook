# rethrow

rethrow error.

## Syntax

- rethrow(MException)

## Input argument

- MException - MException object

## Description

<p>
            rethrow(MException) reissues the error specified by MException.</p>

## Example

```matlab

try
  a
catch ME
  disp(ME)
  rethrow(ME)
end

```

## See also

[MException](../error_manager/MException.md), [throw](../error_manager/throw.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
