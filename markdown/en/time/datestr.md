# datestr

Convert date and time to string format.

## Syntax

- dateAsString = datestr(dateVector)
- dateAsString = datestr(dateNumber)
- dateAsString = datestr(..., formatOut)
- dateAsString = datestr(dateAsStringIn)
- dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)
- dateAsString = datestr(..., 'local')

## Input argument

- dateVector - Date vectors or matrix.
- dateNumber - Serial date numbers: An array of positive double-precision floating-point numbers.
- formatOut - character vector, string scalar or integer value (-1 default): Output format for representing dates and times
- dateAsStringIn - character vector, cell array or string array: text denoting dates and times to convert.
- pivotYear - integer value: present minus 50 years (default).
- 'local' - returns the date in the language of the current locale.

## Output argument

- dateAsString - character vector or two-dimensional character array: text denoting dates and time.

## Description

  <p><b>dateAsString = datestr(dateVector)</b> converts date vectors into text that represents the corresponding dates and times. It returns a character array with <b>m</b> rows, where <b>m</b> is the number of date vectors in <b>dateVector</b>.</p>
  <p><b>dateAsString = datestr(dateNumber)</b> converts serial date numbers into text representing dates and times. The output is a character array with <b>m</b> rows, where <b>m</b> is the number of date numbers in <b>dateNumber</b>.</p>
  <p><b>dateAsString = datestr(..., formatOut)</b> allows you to specify the format of the output text using <b>formatOut</b>. You can apply this option with any of the previous input types.</p>
  <p><b>dateAsString = datestr(dateAsStringIn)</b> converts the input string <b>dateAsStringIn</b> into a text format of day-month-year hour:minute:second. All dates in <b>dateAsStringIn</b> must follow the same format.</p>
  <p><b>dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)</b> converts <b>dateAsStringIn</b> into the format specified by <b>formatOut</b>, while using an optional <b>pivotYear</b> to interpret two-digit years.</p>
  <p><b>dateAsString = datestr(..., 'local')</b> returns the date in the language of the system's current locale. If <b>'local'</b> is omitted, the default language is US English. The <b>'local'</b> option can be used with any of the previous syntaxes, and must be the last argument in the sequence.</p>
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

## Examples

```matlab
dateVector = [2019, 4, 2, 9, 7, 18];
datestr(dateVector)
```

```matlab
dateVector = [2019, 4, 2, 9, 7, 18];
formatOut = 'mm/dd/yy';
datestr(dateVector, formatOut)
```

```matlab
datestr(now, 'mmmm dd, yyyy HH:MM:SS.FFF AM')
```

```matlab
datestr('06:33 PM','HH:MM')
```

```matlab
datestr('06:33','HH:MM PM')
```

```matlab
formatOut = 'dd mmm yyyy';
datestr(datenum('18-05-45','dd-mm-yy',1900),formatOut)
```

```matlab
datestr(datenum({'09/17/2017';'06/14/1906';'10/29/2014'}, 'mm/dd/yyyy')))
```

```matlab
dateStringIn = '5/17/56';
formatOut = 1;
pivotYear = 1900;
datestr(dateStringIn, formatOut, pivotYear)
pivotYear = 2000;
datestr(dateStringIn,formatOut, pivotYear)
```

## See also

[datenum](datenum.md), [datevec](datevec.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.8.0   | initial version |

## Author

Allan CORNET
