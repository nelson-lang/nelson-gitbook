#import "nelson_help.typ": *

= MPI\_Get\_version <mpi:MPI_Get_version>

Return the version number of MPI.

== Syntax

- #raw("[major, minor] = MPI_Get_version()");

== Output argument

/ major: an integer value.
/ minor: an integer value.

== Description

Return the version number of MPI.


== Example

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
[major, minor] = MPI_Get_version()
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
