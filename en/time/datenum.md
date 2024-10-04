# datenum

Return the date/time input as a serial day number.

## Syntax

- d = datetnum(datevec)
- d = datenum(datestr)
- d = datenum(datestr, format)
- d = datenum(datestr, pivotYear)
- d = datenum(DateString,format,pivotYear)
- d = datetnum(Y, M, D)
- d = datetnum(Y, M, D, H, MN, S)

## Input argument

- datevec - a vector: [Y, M, D, H, MN, S] or matrix N x 6.
- format - a string: date format.
- datestr - a string, cell of string or string array: text representing a date.
- Y, M, D, H, MN, S - double: Year, Month, Day, Hours, Minutes, Secondes (scalar or vector).
- pivotYear: Start year of 100-year date range - integer value or present minus 50 years (default).

## Output argument

- d - a double: serial date number (serial day 1 corresponds to 1-Jan-0000).

## Description

  <p><b>d = datenum()</b> returns the serial date number corresponding to current date.</p>
  <p><b>d = datenum(datevec)</b> converts date vector to serial date number.</p>
  <p><b>d = datenum(datestr)</b> and <b>d = datenum(datestr, format)</b> converts string to serial date number.</p>
  <p/>
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
  <p/>
  <p>If format is not specified, the default format is <b>dd-mmm-yyyy</b>.</p>
  <p/>
  <p>If format is specified and not using predefined format, the format must be specified as a character vector or string scalar composed of symbolic identifiers.</p>
  <p>The format of the input text for representing dates and times, expressed as a character vector or string scalar composed of symbolic identifiers.</p>
  <p/>
  <table border="1">
    <tr>
      <th>Symbolic Identifier</th>
      <th>Description</th>
      <th>Example</th>
    </tr>
    <tr>
      <td>yyyy</td>
      <td>Year in full</td>
      <td>1995, 2012</td>
    </tr>
    <tr>
      <td>yy</td>
      <td>Year in two digits</td>
      <td>89, 01</td>
    </tr>
    <tr>
      <td>QQ</td>
      <td>Quarter year using letter Q and one digit</td>
      <td>Q1</td>
    </tr>
    <tr>
      <td>mmmm</td>
      <td>Month using full name</td>
      <td>March, December</td>
    </tr>
    <tr>
      <td>mmm</td>
      <td>Month using first three letters</td>
      <td>Mar, Dec</td>
    </tr>
    <tr>
      <td>mm</td>
      <td>Month in two digits</td>
      <td>04, 12</td>
    </tr>
    <tr>
      <td>m</td>
      <td>Month using capitalized first letter</td>
      <td>M, D</td>
    </tr>
    <tr>
      <td>dddd</td>
      <td>Day using full name</td>
      <td>Monday, Tuesday</td>
    </tr>
    <tr>
      <td>ddd</td>
      <td>Day using first three letters</td>
      <td>Mon, Tue</td>
    </tr>
    <tr>
      <td>dd</td>
      <td>Day in two digits</td>
      <td>06, 21</td>
    </tr>
    <tr>
      <td>d</td>
      <td>Day using capitalized first letter</td>
      <td>M, T</td>
    </tr>
    <tr>
      <td>HH</td>
      <td>Hour in two digits (no leading zeros when symbolic identifier AM or PM is used)</td>
      <td>06, 6 AM</td>
    </tr>
    <tr>
      <td>MM</td>
      <td>Minute in two digits</td>
      <td>11, 01</td>
    </tr>
    <tr>
      <td>SS</td>
      <td>Second in two digits</td>
      <td>06, 59</td>
    </tr>
    <tr>
      <td>FFF</td>
      <td>Millisecond in three digits</td>
      <td>056</td>
    </tr>
    <tr>
      <td>AM or PM</td>
      <td>AM or PM inserted in text representing time</td>
      <td>5:46:02 PM</td>
    </tr>
  </table>

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

| Version | Description                   |
| ------- | ----------------------------- |
| 1.0.0   | initial version               |
| 1.8.0   | date string parsing extended. |

## Author

Allan CORNET
