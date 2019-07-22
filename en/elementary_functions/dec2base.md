

# dec2base

Convert decimal number to another base.

## Syntax

- R = dec2base(D, B)
- R = dec2base(D, B, N)

## Input argument

 - D - a nonnegative integer smaller than the value returned by flintmax.
 - B - an integer value [2, 36].
 - N - an integer value. number of digits.

## Output argument

 - R - result of dec2base: char array.

## Description


  <p><b>dec2base</b> converts decimal number to another base.</p>
  <p>values are cached to speed up next computation <b>dec2base([], 2)</b> to clear cache.</p>


## Example

```matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)
```

## See also

[base2dec](base2dec.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



