#import "../nelson_help.typ": *

= hour <time:3_date_time_components.hour>

Hours part of the input date and time.

== Syntax

- #raw("h = hour(t)");
- #raw("h = hour(t, formatIn)");

== Input argument

/ t: serial date number or text inputs
/ formatIn: valid date format

== Output argument

/ h: a double: integer value.

== Description

#strong[h \= hour(t)]; extracts the hour component from each date and time specified in#strong[t];.

 The output#strong[h]; is a double array containing integer values ranging from 0 to 23.


== Example

``````matlab
h = hour(738427.656845093)
h = hour("2021/09/28 15:45:51", 'YYYY/M/DD HH:MM:SS')

``````


== See also

#nlink(<time:3_date_time_components.minute>)[minute];, #nlink(<time:3_date_time_components.second>)[second];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.10.0], [initial version],
)

// Author: Allan CORNET
