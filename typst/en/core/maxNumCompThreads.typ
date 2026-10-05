#import "nelson_help.typ": *

= maxNumCompThreads <core:maxNumCompThreads>

Set\/Get maximum number of computational threads.

== Syntax

- #raw("T = maxNumCompThreads()");
- #raw("PREVIOUS_T = maxNumCompThreads(T)");
- #raw("PREVIOUS_T = maxNumCompThreads('automatic')");

== Input argument

/ T: an integer value: number of threads used by Nelson for computations.

== Output argument

/ T: an integer value: number of threads used by Nelson for computations.
/ PREVIOUS\_T: an integer value: previous number of threads used by Nelson for computations.

== Description

#strong[maxNumCompThreads]; returns the number of threads used by Nelson for computations.

 #strong[maxNumCompThreads(T)]; sets the maximum number of computational threads. This modification is only available for current session.

 By default, maxNumCompThreads uses OMP\_NUM\_THREADS environment variable or numbers of detected physical cores on Windows and logical cores on others platforms.

 Limitation: On Windows 32 bits, due to MKL and OpenMP,#strong[maxNumCompThreads]; returns 4 max even if there is more core.


== Example

``````matlab
maxNumCompThreads
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
