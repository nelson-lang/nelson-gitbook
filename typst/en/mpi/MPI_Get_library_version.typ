#import "nelson_help.typ": *

= MPI\_Get\_library\_version <mpi:MPI_Get_library_version>

Return the version number of MPI library.

== Syntax

- #raw("name = MPI_Get_library_version()");

== Output argument

/ name: a string: Version of MPI.

== Description

This function returns the version number of MPI library.


== Example

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
name = MPI_Get_library_version()
if MPI_Initialized()
  MPI_Finalize();
end

``````


== See also

#nlink(<mpi:MPI_Get_version>)[MPI\_Get\_version];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
