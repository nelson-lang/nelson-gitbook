# minute

Minutes part of the input date and time.

## Syntax

- m = minute(t)
- m = minute(t, formatIn)

## Input argument

- t - serial date number or text inputs
- formatIn - valid date format

## Output argument

- m - a double: integer value.

## Description

<p>
            m = minute(t) extracts the minute component from each date and time specified in t.</p>

<p>The output m is a double array containing integer values ranging from 0 to 59.</p>

## Example

```matlab
m = minute(738427.656845093)
m = minute("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

```

## See also

[hour](../time/hour.md), [second](../time/second.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
