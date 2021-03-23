

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
  <p><b>ME = MException('last')</b> return last exception.</p>
  <p><b>MException('reset')</b> clears last exception.</p>


## Example

```matlab
ME = MException('nelson:identifier', 'your error message.')
throw(ME)
```

## See also

[error](error.md), [try](../interpreter/try.md), [throw](throw.md), [rethrow](rethrow.md), [throwAsCaller](throwAsCaller.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



