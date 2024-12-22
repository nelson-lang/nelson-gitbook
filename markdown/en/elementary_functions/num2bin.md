# num2bin

Convert number to binary representation.

## Syntax

- R = num2bin(M)

## Input argument

- M - a variable: logical, integer, single or double real full matrix.

## Output argument

- R - result of num2bin: char array.

## Description

  <p><b>num2bin</b> returns a char array giving the literal bit representation of a number.</p>

Used function(s)

C++ std::bitset

Bibliography

http://www.oxfordmathcenter.com/drupal7/node/43

## Example

```matlab
X = [65535 128; 1 0]
Y = num2bin(X)
```

## See also

[bin2num](bin2num.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
