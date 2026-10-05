#import "nelson_help.typ": *

= MPI\_Initialized <mpi:MPI_Initialized>

Indicates whether MPI\_Init has been called.

== Syntax

- #raw("r = MPI_Initialized()");

== Output argument

/ r: a logical.

== Description

Indicates whether MPI\_Init has been called.


== Example

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
if MPI_Initialized()
  MPI_Finalize();
end

``````


== See also

#nlink(<mpi:MPI_Init>)[MPI\_Init];, #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
