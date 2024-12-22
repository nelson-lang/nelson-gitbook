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

  <p><b>m = minute(t)</b> extracts the minute component from each date and time specified in <b>t</b>.</p>
  <p>The output <b>m</b> is a double array containing integer values ranging from 0 to 59.</p>

## Example

```matlab
m = minute(738427.656845093)
m = minute("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')
```

## See also

[hour](hour.md), [second](second.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
