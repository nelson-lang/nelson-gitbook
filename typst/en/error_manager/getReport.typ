#import "nelson_help.typ": *

= getReport <error_manager:getReport>

Get MException report.

== Syntax

- #raw("report = getReport(ME)");
- #raw("report = getReport(ME, type)");
- #raw("report = ME.getReport(type)");

== Input argument

/ ME: a scalar MException object.
/ type: 'basic' or 'extended'.

== Output argument

/ report: a string: formatted exception report.

== Description

#strong[getReport]; returns a formatted report for an MException object.

 The #strong[basic]; report contains the exception message. The #strong[extended]; report includes additional diagnostic information when available.


== Example

``````matlab
ME = MException('nelson:badIndex', 'Unable to index into array.');
getReport(ME, 'basic')
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:throw>)[throw];, #nlink(<error_manager:getLastReport>)[getLastReport];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
