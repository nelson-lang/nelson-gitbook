#import "nelson_help.typ": *

= MPI\_Comm\_get\_name <mpi:MPI_Comm_get_name>

Return the print name from the communicator.

== Syntax

- #raw("MPI_Comm_get_name(comm)");

== Input argument

/ comm: a handle: a MPI\_Comm object.

== Description

#strong[MPI\_Comm\_get\_name(comm)]; returns the print name from the communicator.


== Example

CLI required

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_get_name(comm)
delete(comm)
if MPI_Initialized()
  MPI_Finalize();
end

``````


== See also

#nlink(<mpi:MPI_Comm_object>)[MPI\_Comm\_object];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
