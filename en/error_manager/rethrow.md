

# rethrow

rethrow error.

## Syntax

- rethrow(MException)

## Input argument

 - MException - MException object

## Description


  <p><b>rethrow(MException)</b> reissues the error specified by <b>MException</b>.</p>


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

[MException](MException.md), [throw](throw.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



