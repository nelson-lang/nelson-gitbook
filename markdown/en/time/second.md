# second

Seconds part of the input date and time.

## Syntax

- s = second(t)
- s = second(t, formatIn)

## Input argument

- t - serial date number or text inputs
- formatIn - valid date format

## Output argument

- s - a double: integer value.

## Description

<p>
            s = second(t) extracts the second component from each date and time specified in t.</p>

<p>The output s is a double array containing integer values ranging from 0 to 59.</p>

## Example

```matlab
s = second(738427.656845093)
s = second("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## See also

[minute](../time/minute.md), [hour](../time/hour.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
