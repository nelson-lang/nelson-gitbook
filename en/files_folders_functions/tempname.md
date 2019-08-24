

# tempname

Returns an unique temporary filename.

## Syntax

- f = tempname()
- f = tempdir(path)

## Input argument

 - path - a string: an existing directory used instead of tempdir().

## Output argument

 - f - a string: an unique temporary filename.

## Description


  <p>Returns the name of an unique temporary filename.</p>


## Example

```matlab
r = tempname()
```

## See also

[mkdir](mkdir.md), [tempdir](tempdir.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



