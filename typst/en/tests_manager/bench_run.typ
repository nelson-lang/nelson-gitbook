#import "nelson_help.typ": *

= bench\_run <tests_manager:bench_run>

Run benchmarks

== Syntax

- #raw("status = bench_run()");
- #raw("status = bench_run(targets)");
- #raw("status = bench_run(targets, Name, Value)");

== Input argument

/ targets: module name, module names, benchmark file, or benchmark files.
/ Name, Value: options accepted by nelson.unittest.run.

== Output argument

/ status: logical: true when all selected benchmarks succeed.

== Description

#strong[bench\_run]; discovers and executes only 'bench\_\*.m' files.

 Benchmarks always run in child processes. One benchmark process is used with up to eight available threads; two benchmark processes are used when more than eight threads are available.

 Use #strong[nelson.unittest.run]; with #strong[Kind]; set to #strong[bench]; to obtain structured results.


== Example

``````matlab
bench_run('string')
``````


== See also

#nlink(<tests_manager:test_run>)[test\_run];, #nlink(<tests_manager:nelson_unittest_run>)[nelson.unittest.run];.

// Author: Allan CORNET
