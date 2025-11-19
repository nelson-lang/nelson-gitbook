# datestr

Convert date and time to string format.

## 📝 Syntax

- dateAsString = datestr(dateVector)
- dateAsString = datestr(dateNumber)
- dateAsString = datestr(..., formatOut)
- dateAsString = datestr(dateAsStringIn)
- dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)
- dateAsString = datestr(..., 'local')

## 📥 Input argument

- dateVector - Date vectors or matrix.
- dateNumber - Serial date numbers: An array of positive double-precision floating-point numbers.
- formatOut - character vector, string scalar or integer value (-1 default): Output format for representing dates and times
- dateAsStringIn - character vector, cell array or string array: text denoting dates and times to convert.
- pivotYear - integer value: present minus 50 years (default).
- 'local' - returns the date in the language of the current locale.

## 📤 Output argument

- dateAsString - character vector or two-dimensional character array: text denoting dates and time.

## 📄 Description

<b>dateAsString = datestr(dateVector)</b> converts date vectors into text that represents the corresponding dates and times. It returns a character array with<b>m</b> rows, where <b>m</b> is the number of date vectors in<b>dateVector</b>.

<b>dateAsString = datestr(dateNumber)</b> converts serial date numbers into text representing dates and times. The output is a character array with<b>m</b> rows, where <b> m</b> is the number of date numbers in <b>dateNumber</b>.

<b>dateAsString = datestr(..., formatOut)</b> allows you to specify the format of the output text using<b>formatOut</b>. You can apply this option with any of the previous input types.

<b>dateAsString = datestr(dateAsStringIn)</b> converts the input string <b> dateAsStringIn</b> into a text format of day-month-year hour:minute:second. All dates in<b>dateAsStringIn</b> must follow the same format.

<b>dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)</b> converts<b>dateAsStringIn</b> into the format specified by<b>formatOut</b>, while using an optional <b>pivotYear</b> to interpret two-digit years.

<b>dateAsString = datestr(..., 'local')</b> returns the date in the language of the system's current locale. If <b>'local'</b> is omitted, the default language is US English. The <b>'local'</b> option can be used with any of the previous syntaxes, and must be the last argument in the sequence.

Supported format conversion:

<b>dd-mmm-yyyy HH:MM:SS</b> 10-Mar-2010 16:48:17

<b>dd-mmm-yyyy</b> 10-Mar-2010

<b>mm/dd/yyyy</b> 03/10/2010

<b>mm/dd/yy</b> 03/10/00

<b>mm/dd</b> 03/10

<b>mmm.dd,yyyy HH:MM:SS</b> Mar.10,2010 16:48:17

<b>mmm.dd,yyyy</b> Mar.10,2010

<b>yyyy-mm-dd HH:MM:SS</b> 2010-03-10 16:48:17

<b>yyyy-mm-dd</b> 2010-03-10

<b>yyyy/mm/dd</b> 2000/03/10

<b>HH:MM:SS</b> 16:48:17

<b>HH:MM:SS PM</b> 3:48:17 PM

<b>HH:MM</b> 16:48

<b>HH:MM PM</b> 3:35 PM

If format is not specified, the default format is <b>dd-mmm-yyyy</b>.

If format is specified and not using predefined format, the format must be specified as a character vector or string scalar composed of symbolic identifiers.

The format of the input text for representing dates and times, expressed as a character vector or string scalar composed of symbolic identifiers.

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

## 💡 Examples

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

## 🔗 See also

[datenum](../time/datenum.md), [datevec](../time/datevec.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.8.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
