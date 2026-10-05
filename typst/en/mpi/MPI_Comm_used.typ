#import "nelson_help.typ": *

= MPI\_Comm\_used <mpi:MPI_Comm_used>

Returns the current valid MPI\_Comm handles.

== Syntax

- #raw("r = MPI_Comm_used()");

== Output argument

/ h: a vector of MPI\_Comm handle.

== Description

Returns the current valid MPI\_Comm handles.


== Example

CLI required

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(comm)
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

``````


== See also

#nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
