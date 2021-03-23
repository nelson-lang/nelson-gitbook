

# throwAsCaller

Throw exception as if occurs within calling function.

## Syntax

- throwAsCaller(MException)

## Input argument

 - MException - MException object

## Description


  <p>It throws an exception as if it occurs within the calling function.</p>


## Example

```matlab
function test_throwAsCaller()
  ME = MException('n:m', 'your error')
  throwAsCaller(ME)
```

## See also

[MException](MException.md), [rethrow](rethrow.md), [throw](throw.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



