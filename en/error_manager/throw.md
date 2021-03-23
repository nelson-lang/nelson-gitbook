

# throw

throw error.

## Syntax

- throw(MException)

## Input argument

 - MException - MException object

## Description


  <p><b>throw(MException)</b> throws an exception based on the information contained in the <b>MException</b> object, exception.</p>


## Example

```matlab
ME = MException('nelson:errorId', 'my error')
throw(ME)
```

## See also

[MException](MException.md), [rethrow](rethrow.md), [throwAsCaller](throwAsCaller.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



