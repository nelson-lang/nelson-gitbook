#import "nelson_help.typ": *

= MPI\_Comm\_object <mpi:MPI_Comm_object>

Creates MPI\_Comm object.

== Syntax

- #raw("comm = MPI_Comm_object()");
- #raw("comm = MPI_Comm_object(str)");

== Input argument

/ str: a string: MPI\_COMM\_SELF, or MPI\_COMM\_WORLD.

== Description

#strong[MPI\_Comm\_object(h)]; creates an MPI\_Comm object.


== Example

CLI required

``````matlab
used = MPI_Comm_used()
``````


== See also

#nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used];, #nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
