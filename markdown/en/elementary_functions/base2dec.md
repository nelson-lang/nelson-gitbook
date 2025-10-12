# base2dec

Convert number in a base to decimal.

## Syntax

- D = base2dec(TXT, B)

## Input argument

- TXT - a char array.
- B - an integer value: [2, 36].

## Output argument

- D - result of base2dec: an integer value.

## Description

<p>
            base2dec converts number in a base to decimal.</p>

<p>Note:</p>

<p> - dec2base and base2dec are inverses of one another.</p>

<p> - values are cached to speed up next computation base2dec('', 2) to clear cache.
        </p>

## Example

```matlab
base2dec('313', 3)
```

## See also

[dec2base](../elementary_functions/dec2base.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
