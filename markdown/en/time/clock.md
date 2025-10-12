# clock

Return the current local date and time as a date vector.

## Syntax

- v = clock()

## Output argument

- v - a vector: [year, month, day, hours, minutes, seconds].

## Description

<p>
            calendar() returns the currently monthly calendar.</p>

<p>The date vector contains the following fields:</p>

<p>year</p>

<p>months [1, 12]</p>

<p>days [1, 31]</p>

<p>hours [0, 23]</p>

<p>minutes [0, 59]</p>

<p>seconds [0, 61]</p>

<p>seconds: field has a fractional part after the decimal point for extended accuracy.</p>

<p>To time the duration of an event, use tic and toc functions instead of clock.</p>

<p>The clock function is based on the system time and thus might not be reliable for time comparison operations.</p>

## Example

```matlab
c = clock()
fix(c)
```

## See also

[tic](../time/tic.md), [toc](../time/toc.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
