#import "nelson_help.typ": *

= verLessThan <core:verLessThan>

Compare toolbox version to a version string.

== Syntax

- #raw("tf = verLessThan(toolboxName, versionString)");

== Input argument

/ toolboxName: a string scalar or character array: product name.
/ versionString: a string of the form #strong['major\[.minor\[.revision\]\]'];.

== Output argument

/ tf: a logical: #strong[true]; when the installed version is lower than #strong[versionString];.

== Description

#strong[tf \= verLessThan(toolboxName, versionString)]; returns #strong[true]; when the installed version of the named product is lower than #strong[versionString];.

 For compatibility, querying #strong['matlab']; reports a recent version so that legacy version gates resolve to #strong[false];.


== Example

``````matlab
tf = verLessThan('nelson', '0.1')
``````


== See also

#nlink(<core:ver>)[ver];, #nlink(<core:isMATLABReleaseOlderThan>)[isMATLABReleaseOlderThan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
