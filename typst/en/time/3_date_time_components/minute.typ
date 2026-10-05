#import "../nelson_help.typ": *

= minute <time:3_date_time_components.minute>

Minutes part of the input date and time.

== Syntax

- #raw("m = minute(t)");
- #raw("m = minute(t, formatIn)");

== Input argument

/ t: serial date number or text inputs
/ formatIn: valid date format

== Output argument

/ m: a double: integer value.

== Description

#strong[m \= minute(t)]; extracts the minute component from each date and time specified in#strong[t];.

 The output#strong[m]; is a double array containing integer values ranging from 0 to 59.


== Example

``````matlab
m = minute(738427.656845093)
m = minute("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== See also

#nlink(<time:3_date_time_components.hour>)[hour];, #nlink(<time:3_date_time_components.second>)[second];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
