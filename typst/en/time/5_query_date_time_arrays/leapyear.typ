#import "../nelson_help.typ": *

= leapyear <time:5_query_date_time_arrays.leapyear>

Determine leap year.

== Syntax

- #raw("tf = leapyear(year)");

== Input argument

/ year: year: scalar or array numeric value.

== Output argument

/ tf: Leap year determination result: scalar or array logical value.

== Description

#strong[leapyear]; determines leap years.

 Leap years is done by Gregorian calendar rules.


== Example

``````matlab
tf = leapyear([2020 2021 2022])
``````


== See also

#nlink(<time:1_create_date_time_arrays.datenum>)[datenum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
