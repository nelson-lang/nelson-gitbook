

# int2str

Convert an integer array to a string

## Syntax

- res = int2str(var)

## Input argument

 - var - an numeric array.

## Output argument

 - res - a string

## Description

<b>int2str</b> converts an numeric array to a string with integer format. Inputs are rounded before conversion.

## Examples

```Nelson
R = int2str ([-Inf, 2, NaN; 4, Inf, 6])
```
```Nelson
R = int2str(uint64(intmax('uint64')))
```

## See also

[char](char.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



