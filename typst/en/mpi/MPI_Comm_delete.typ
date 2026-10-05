#import "nelson_help.typ": *

= MPI\_Comm\_delete <mpi:MPI_Comm_delete>

Removes MPI\_Comm object.

== Syntax

- #raw("MPI_Comm_delete(h)");
- #raw("delete(h)");

== Input argument

/ h: a handle: a MPI\_Comm object.

== Description

#strong[delete(h)]; deletes MPI\_Comm object itself.

 Do not forget to clear variable afterward.


== Example

CLI required

``````matlab
used = MPI_Comm_used()
``````


== See also

#nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
