#import "../nelson_help.typ": *

= datestr <time:6_text_and_external_time_systems.datestr>

Convert date and time to string format.

== Syntax

- #raw("dateAsString = datestr(dateVector)");
- #raw("dateAsString = datestr(dateNumber)");
- #raw("dateAsString = datestr(..., formatOut)");
- #raw("dateAsString = datestr(dateAsStringIn)");
- #raw("dateAsString = datestr(dateAsStringIn, formatOut, pivotYear)");
- #raw("dateAsString = datestr(..., 'local')");

== Input argument

/ dateVector: Date vectors or matrix.
/ dateNumber: Serial date numbers: An array of positive double-precision floating-point numbers.
/ formatOut: character vector, string scalar or integer value (-1 default): Output format for representing dates and times
/ dateAsStringIn: character vector, cell array or string array: text denoting dates and times to convert.
/ pivotYear: integer value: present minus 50 years (default).
/ 'local': returns the date in the language of the current locale.

== Output argument

/ dateAsString: character vector or two-dimensional character array: text denoting dates and time.

== Description

#strong[dateAsString \= datestr(dateVector)]; converts date vectors into text that represents the corresponding dates and times. It returns a character array with#strong[m]; rows, where #strong[m]; is the number of date vectors in#strong[dateVector];.

 #strong[dateAsString \= datestr(dateNumber)]; converts serial date numbers into text representing dates and times. The output is a character array with#strong[m]; rows, where #strong[m]; is the number of date numbers in #strong[dateNumber];.

 #strong[dateAsString \= datestr(..., formatOut)]; allows you to specify the format of the output text using#strong[formatOut];. You can apply this option with any of the previous input types.

 #strong[dateAsString \= datestr(dateAsStringIn)]; converts the input string #strong[dateAsStringIn]; into a text format of day-month-year hour:minute:second. All dates in#strong[dateAsStringIn]; must follow the same format.

 #strong[dateAsString \= datestr(dateAsStringIn, formatOut, pivotYear)]; converts#strong[dateAsStringIn]; into the format specified by#strong[formatOut];, while using an optional #strong[pivotYear]; to interpret two-digit years.

 #strong[dateAsString \= datestr(..., 'local')]; returns the date in the language of the system's current locale. If #strong['local']; is omitted, the default language is US English. The #strong['local']; option can be used with any of the previous syntaxes, and must be the last argument in the sequence.

 

 Supported format conversion:

 #strong[dd-mmm-yyyy HH:MM:SS]; 10-Mar-2010 16:48:17

 #strong[dd-mmm-yyyy]; 10-Mar-2010

 #strong[mm\/dd\/yyyy]; 03\/10\/2010

 #strong[mm\/dd\/yy]; 03\/10\/00

 #strong[mm\/dd]; 03\/10

 #strong[mmm.dd,yyyy HH:MM:SS]; Mar.10,2010 16:48:17

 #strong[mmm.dd,yyyy]; Mar.10,2010

 #strong[yyyy-mm-dd HH:MM:SS]; 2010-03-10 16:48:17

 #strong[yyyy-mm-dd]; 2010-03-10

 #strong[yyyy\/mm\/dd]; 2000\/03\/10

 #strong[HH:MM:SS]; 16:48:17

 #strong[HH:MM:SS PM]; 3:48:17 PM

 #strong[HH:MM]; 16:48

 #strong[HH:MM PM]; 3:35 PM

 

 If format is not specified, the default format is #strong[dd-mmm-yyyy];.

 

 If format is specified and not using predefined format, the format must be specified as a character vector or string scalar composed of symbolic identifiers.

 The format of the input text for representing dates and times, expressed as a character vector or string scalar composed of symbolic identifiers.

 

 

#table(
  columns: 3,
  [Symbolic Identifier], [Description], [Example], 
  [yyyy], [Year in full], [1995, 2012], 
  [yy], [Year in two digits], [89, 01], 
  [QQ], [Quarter year using letter Q and one digit], [Q1], 
  [mmmm], [Month using full name], [March, December], 
  [mmm], [Month using first three letters], [Mar, Dec], 
  [mm], [Month in two digits], [04, 12], 
  [m], [Month using capitalized first letter], [M, D], 
  [dddd], [Day using full name], [Monday, Tuesday], 
  [ddd], [Day using first three letters], [Mon, Tue], 
  [dd], [Day in two digits], [06, 21], 
  [d], [Day using capitalized first letter], [M, T], 
  [HH], [Hour in two digits (no leading zeros when symbolic identifier AM or PM is used)], [06, 6 AM], 
  [MM], [Minute in two digits], [11, 01], 
  [SS], [Second in two digits], [06, 59], 
  [FFF], [Millisecond in three digits], [056], 
  [AM or PM], [AM or PM inserted in text representing time], [5:46:02 PM], 
)

== Examples

``````matlab
dateVector = [2019, 4, 2, 9, 7, 18];
datestr(dateVector)
``````

``````matlab
dateVector = [2019, 4, 2, 9, 7, 18];
formatOut = 'mm/dd/yy';
datestr(dateVector, formatOut)
``````

``````matlab
datestr(now, 'mmmm dd, yyyy HH:MM:SS.FFF AM')
``````

``````matlab
datestr('06:33 PM','HH:MM')
``````

``````matlab
datestr('06:33','HH:MM PM')
``````

``````matlab
formatOut = 'dd mmm yyyy';
datestr(datenum('18-05-45','dd-mm-yy',1900),formatOut)

``````

``````matlab
datestr(datenum({'09/17/2017';'06/14/1906';'10/29/2014'}, 'mm/dd/yyyy')))
``````

``````matlab
dateStringIn = '5/17/56';
formatOut = 1;
pivotYear = 1900;
datestr(dateStringIn, formatOut, pivotYear)
pivotYear = 2000;
datestr(dateStringIn,formatOut, pivotYear)

``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];, #nlink(<time:1_create_date_time_arrays.datevec>)[datevec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.8.0], [initial version],
)

// Author: Allan CORNET
