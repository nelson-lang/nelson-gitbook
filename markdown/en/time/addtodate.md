# addtodate

Modify date number by field.

## Syntax

- r = addtodate(d, q, f)

## Input argument

- d - serial datenum.
- q - quantile to add to date
- f - 'year', 'month', 'day', 'hour', 'minute', 'second', or 'millisecond.

## Output argument

- r - date number.

## Description

<p>
            r = addtodate(d, q, f) adds quantity q to the indicated date field f of a scalar serial date number d, returning the updated date number r.</p>

## Example

```matlab
t = datenum('07-Apr-2008 23:00:00');datevec(t)
t2 = addtodate(t, -2, 'hour');datevec(t2)
t3 = addtodate(t, 4, 'hour');datevec(t3)
```

## See also

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
