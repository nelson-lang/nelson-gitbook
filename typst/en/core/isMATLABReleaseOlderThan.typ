#import "nelson_help.typ": *

= isMATLABReleaseOlderThan <core:isMATLABReleaseOlderThan>

Compare current release to a MATLAB release.

== Syntax

- #raw("tf = isMATLABReleaseOlderThan(release)");
- #raw("tf = isMATLABReleaseOlderThan(release, 'update', n)");

== Input argument

/ release: a release name of the form #strong['RYYYYa']; or #strong['RYYYYb'];, such as #strong['R2023b'];.
/ n: a nonnegative integer: update number.

== Output argument

/ tf: a logical: #strong[true]; when the current release is older than the requested one.

== Description

#strong[tf \= isMATLABReleaseOlderThan(release)]; compares the current release to #strong[release];.

 Nelson emulates a recent release, so checks against older releases resolve to #strong[false]; and compatibility code takes its current path.


== Example

``````matlab
tf = isMATLABReleaseOlderThan('R2020b')
``````


== See also

#nlink(<core:verLessThan>)[verLessThan];, #nlink(<core:ver>)[ver];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
