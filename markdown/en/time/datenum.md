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
- format - a string specifying the date format, or leave it empty ('') for automatic format detection.
- datestr - a string, cell of string or string array: text representing a date.
- Y, M, D, H, MN, S - double: Year, Month, Day, Hours, Minutes, Secondes (scalar or vector).
- pivotYear: Start year of 100-year date range - integer value or present minus 50 years (default).

## Output argument

- d - a double: serial date number (serial day 1 corresponds to 1-Jan-0000).

## Description

<p>
            d = datenum() returns the serial date number corresponding to current date.</p>

<p>
            d = datenum(datevec) converts date vector to serial date number.</p>

<p>
            d = datenum(datestr) and d = datenum(datestr, format) converts string to
            serial date number.</p>

<p></p>

<p>Supported format conversion:</p>

<p>
            dd-mmm-yyyy HH:MM:SS 10-Mar-2010 16:48:17</p>

<p>
            dd-mmm-yyyy 10-Mar-2010</p>

<p>
            mm/dd/yyyy 03/10/2010</p>

<p>
            mm/dd/yy 03/10/00</p>

<p>
            mm/dd 03/10</p>

<p>
            mmm.dd,yyyy HH:MM:SS Mar.10,2010 16:48:17</p>

<p>
            mmm.dd,yyyy Mar.10,2010</p>

<p>
            yyyy-mm-dd HH:MM:SS 2010-03-10 16:48:17</p>

<p>
            yyyy-mm-dd 2010-03-10</p>

<p>
            yyyy/mm/dd 2000/03/10</p>

<p>
            HH:MM:SS 16:48:17</p>

<p>
            HH:MM:SS PM 3:48:17 PM</p>

<p>
            HH:MM 16:48</p>

<p>
            HH:MM PM 3:35 PM</p>

<p></p>

<p>If format is not specified, the default format is dd-mmm-yyyy.</p>

<p></p>

<p>If format is specified and not using predefined format, the format must be specified as a
            character vector or string scalar composed of symbolic identifiers.</p>

<p>The format of the input text for representing dates and times, expressed as a character
            vector or string scalar composed of symbolic identifiers.</p>

<p></p>

| Symbolic Identifier | Description                                                                     | Example         |
| ------------------- | ------------------------------------------------------------------------------- | --------------- |
| yyyy                | Year in full                                                                    | 1995, 2012      |
| yy                  | Year in two digits                                                              | 89, 01          |
| QQ                  | Quarter year using letter Q and one digit                                       | Q1              |
| mmmm                | Month using full name                                                           | March, December |
| mmm                 | Month using first three letters                                                 | Mar, Dec        |
| mm                  | Month in two digits                                                             | 04, 12          |
| m                   | Month using capitalized first letter                                            | M, D            |
| dddd                | Day using full name                                                             | Monday, Tuesday |
| ddd                 | Day using first three letters                                                   | Mon, Tue        |
| dd                  | Day in two digits                                                               | 06, 21          |
| d                   | Day using capitalized first letter                                              | M, T            |
| HH                  | Hour in two digits (no leading zeros when symbolic identifier AM or PM is used) | 06, 6 AM        |
| MM                  | Minute in two digits                                                            | 11, 01          |
| SS                  | Second in two digits                                                            | 06, 59          |
| FFF                 | Millisecond in three digits                                                     | 056             |
| AM or PM            | AM or PM inserted in text representing time                                     | 5:46:02 PM      |

## Example

```matlab

d = datenum([1973,8,4,12,1,18])
datevec(d)
d = datenum('04–Aug-1973 12:01:18')
d = datenum(["04–Aug-1973 12:01:18"; "04–Aug-1974 11:01:18"])

```

## See also

[datevec](../time/datevec.md).

## History

| Version | Description                           |
| ------- | ------------------------------------- |
| 1.0.0   | initial version                       |
| 1.8.0   | date string parsing extended.         |
| 1.10.0  | added: format '' means try to detect. |

## Author

Allan CORNET
