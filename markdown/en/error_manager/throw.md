# throw

throw error.

## Syntax

- throw(MException)

## Input argument

- MException - MException object

## Description

<p>
            throw(MException) throws an exception based on the information contained in the MException object, exception.</p>

## Example

```matlab

ME = MException('nelson:errorId', 'my error')
throw(ME)
```

## See also

[MException](../error_manager/MException.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
