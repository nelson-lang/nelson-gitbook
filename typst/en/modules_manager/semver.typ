#import "nelson_help.typ": *

= semver <modules_manager:semver>

semantic versioner.

== Syntax

- #raw("r = semver(version_str, version_range)");

== Input argument

/ version\_str: a string: current version.
/ version\_range: a string: version to compare or range.

== Output argument

/ r: a double: -1, 0 or 1.

== Description

#strong[semver]; compares a version string to an version or an range version.

 if an range version is used,#strong[r]; return 0 (not satisfied) or 1 (satisfied).

 if an simple version is used, an comparison value #strong[r]; is returned -1 (inferior), 0 (equal) or 1 (superior).

 supported range operators:

 #strong[\=]; - Equality

 #strong[\>\=]; - Higher or equal to

 #strong[\<\=]; - Lower or equal to

 #strong[\<]; - Lower than

 #strong[\>]; - Higher than

 #strong[^]; - Caret operator comparison

 #strong[\~]; - Tilde operator comparison


== Used function(s)

semver.c

== Bibliography

https:\/\/semver.org\/

== Example

``````matlab

semver('1.5.10', '2.3.0')
semver('2.3.0', '1.5.10');
semver('1.5.10', '1.5.10')
semver('1.2.3', '~1.2.3')
semver('1.5.3', '~1.2.3')
semver('1.0.3', '~1')
semver('2.0.3', '~1')
semver('1.2.3-alpha', '>1.2.3-beta')
semver('1.2.3-alpha', '<1.2.3-beta')
semver('1.2.3', '^1.2.3')
semver('1.2.2', '^1.2.3')
semver('1.9.9', '^1.2.3')
semver('2.0.1', '^1.2.3')
``````


== See also

#nlink(<core:version>)[version];, #nlink(<modules_manager:getmodules>)[getmodules];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
