# datenum

Return the date/time input as a serial day number.

## Syntax

- d = datetnum(datevec)
- d = datenum(datestr)
- d = datenum(datestr, format)
- d = datetnum(Y, M, D)
- d = datetnum(Y, M, D, H, MN, S)

## Input argument

- datevec - a vector: [Y, M, D, H, MN, S] or matrix N x 6.
- format - a string: date format.
- datestr - a string, cell of string or string array: text representing a date.
- Y, M, D, H, MN, S - double: Year, Month, Day, Hours, Minutes, Secondes (scalar or vector).

## Output argument

- d - a double: serial date number (serial day 1 corresponds to 1-Jan-0000).

## Description

  <p><b>d = datenum()</b> returns the serial date number corresponding to current date.</p>
  <p><b>d = datenum(datevec)</b> converts date vector to serial date number.</p>
  <p><b>d = datenum(datestr)</b> and <b>d = datenum(datestr, format)</b> converts string to serial date number.</p>
  <p>Supported format conversion:</p>
  <p><b>dd-mmm-yyyy HH:MM:SS</b> 10-Mar-2010 16:48:17</p>
  <p><b>dd-mmm-yyyy</b> 10-Mar-2010</p>
  <p><b>mm/dd/yyyy</b> 03/10/2010</p>
  <p><b>mm/dd/yy</b> 03/10/00</p>
  <p><b>mm/dd</b> 03/10</p>
  <p><b>mmm.dd,yyyy HH:MM:SS</b> Mar.10,2010 16:48:17</p>
  <p><b>mmm.dd,yyyy</b> Mar.10,2010</p>
  <p><b>yyyy-mm-dd HH:MM:SS</b> 2010-03-10 16:48:17</p>
  <p><b>yyyy-mm-dd</b> 2010-03-10</p>
  <p><b>yyyy/mm/dd</b> 2000/03/10</p>
  <p><b>HH:MM:SS</b> 16:48:17</p>
  <p><b>HH:MM:SS PM</b> 3:48:17 PM</p>
  <p><b>HH:MM</b> 16:48</p>
  <p><b>HH:MM PM</b> 3:35 PM</p>

## Example

```matlab
d = datenum([1973,8,4,12,1,18])
datevec(d)
d = datenum('04–Aug-1973 12:01:18')
d = datenum(["04–Aug-1973 12:01:18"; "04–Aug-1974 11:01:18"])
```

## See also

[datevec](datevec.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
