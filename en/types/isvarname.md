

# isvarname

Return true if input is valid variable name.

## Syntax

- res = isvarname(var)

## Input argument

 - var - a variable

## Output argument

 - res - a logical: true or false

## Description

<b>isvarname</b> returns a logical 1 if the argument is a valid variable name and a logical 0 otherwise.

## Example

```matlab
isvarname(4)
isvarname('t')
isvarname('8t')
isvarname('t8t')
```

## See also

[ischar](ischar.md), [namelengthmax](../core/namelengthmax.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



