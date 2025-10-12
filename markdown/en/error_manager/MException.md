# MException

Matrix Exception information.

## Syntax

- ME = MException(identifier, message)
- ME = MException('last')
- MException('reset')

## Input argument

- identifier - a string: error identifier.
- message - a string.

## Output argument

- ME - a MException object.

## Description

<p>All Nelson code that detects an error and throws an exception constructs an MException object.</p>

<p>identifier includes one or more component fields and a mnemonic field (example: 'nelson:matrix:empty')</p>

<p>
            ME = MException('last') return last exception.</p>

<p>
                MException('reset') clears last exception.</p>

## Example

```matlab
ME = MException('nelson:identifier', 'your error message.')
throw(ME)
```

## See also

[error](../error_manager/error.md), [try](../interpreter/try.md), [throw](../error_manager/throw.md), [rethrow](../error_manager/rethrow.md), [throwAsCaller](../error_manager/throwAsCaller.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
