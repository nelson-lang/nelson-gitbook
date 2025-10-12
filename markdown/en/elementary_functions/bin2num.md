# bin2num

Convert two's complement binary string to number.

## Syntax

- R = bin2num(M)

## Input argument

- M - a char array with.

## Output argument

- R - result of num2bin: logical, single or double.

## Description

<p>
            bin2num converts binary character arry to a numeric array.</p>

<p>Note:</p>

<p> - num2bin always returns the binary representations in a column</p>

<p> - bin2num and num2bin are inverses of one another.</p>

## Bibliography

http://www.oxfordmathcenter.com/drupal7/node/43

## Used function(s)

C++ std::bitset

## Example

```matlab
X = [65535 128; 1 0]
Y = num2bin(X)
bin2num(Y)
```

## See also

[num2bin](../elementary_functions/num2bin.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
