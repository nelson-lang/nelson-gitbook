#import "nelson_help.typ": *

= profile <profiler:profile>

Profile execution time for Macro functions.

== Syntax

- #raw("profile on");
- #raw("profile off");
- #raw("profile resume");
- #raw("profile clear");
- #raw("status = profile('status')");
- #raw("p = profile('info')");
- #raw("profile('show', sortOption)");
- #raw("profile('show', sortOption, nbLines)");

== Input argument

/ sortOption: a string: 'nfl' by name file line, 'line' by line, 'percalls', 'totaltime', 'filename', 'function' or 'nbcalls'.
/ nbLines: a integer value: number of lines to display.

== Description

Profiling is a way to measure where Macro function spend times.

 #strong[s \= profile('status')]; returns a structure with the current status of the profiler.

 #strong[p \= profile('info')]; returns a structure with collected profiling data.

 #strong[profile('on')]; starts profiler.

 #strong[profile('off')]; stops profiler. Collected profiling data will be retrieved later with#strong[p \= profile ('info')];.

 #strong[profile('clear')]; clears collected profiling data.

 #strong[profile('resume')]; restarts and continue and extends collected profiling data.


== Examples

``````matlab
profile on
sind(5)
profile off
profile('show')
profile('show', 'totaltime')
profile('show', 'totaltime', 4)

``````

``````matlab
profile on
sind(5)
profile off
profsave(profile('info'), [tempdir(), 'profile_results'])
unix([tempdir(), 'profile_results/index.html'])

``````


== See also

#nlink(<profiler:profsave>)[profsave];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
