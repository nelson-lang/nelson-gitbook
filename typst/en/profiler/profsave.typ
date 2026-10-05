#import "nelson_help.typ": *

= profsave <profiler:profsave>

Save profile result to HTML format.

== Syntax

- #raw("profsave");
- #raw("profsave(profile_info)");
- #raw("profsave(profile_info, dirname)");

== Input argument

/ profile\_info: a struct: result of profile('info')
/ dirname: a string: output directory destination.

== Description

#strong[profsave]; exports the profiling data into a series of HTML files.

 The input profile\_info is the structure returned by profile('info').

 If unspecified, #strong[profsave]; will use the current profile.


== Example

``````matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

``````


== See also

#nlink(<profiler:profile>)[profile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
