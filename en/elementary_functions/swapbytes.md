

# swapbytes

Swap byte ordering.

## Syntax

- R = swapbytes(M)

## Input argument

 - M - a variable: integer, single or double real full matrix.

## Output argument

 - R - result of swapbytes: reversed byte order of M.

## Description


  <p><b>swapbytes</b> Swap byte ordering.</p>
  <p>endian (little - big) converter</p>


## Example

```matlab
X = uint16([65535 128; 1 0])
Y = swapbytes(X)
```

## See also

[num2bin](num2bin.md), [bin2num](bin2num.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



