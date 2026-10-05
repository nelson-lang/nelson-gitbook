#import "../nelson_help.typ": *

= second <time:3_date_time_components.second>

Seconds part of the input date and time.

== Syntax

- #raw("s = second(t)");
- #raw("s = second(t, formatIn)");

== Input argument

/ t: serial date number or text inputs
/ formatIn: valid date format

== Output argument

/ s: a double: integer value.

== Description

#strong[s \= second(t)]; extracts the second component from each date and time specified in#strong[t];.

 The output#strong[s]; is a double array containing integer values ranging from 0 to 59.


== Example

``````matlab
s = second(738427.656845093)
s = second("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== See also

#nlink(<time:3_date_time_components.minute>)[minute];, #nlink(<time:3_date_time_components.hour>)[hour];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
