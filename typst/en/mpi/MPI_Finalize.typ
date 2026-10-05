#import "nelson_help.typ": *

= MPI\_Finalize <mpi:MPI_Finalize>

Terminate the MPI execution environment.

== Syntax

- #raw("MPI_Finalize()");
- #raw("r = MPI_Finalize()");

== Output argument

/ r: a logical.

== Description

Terminate the MPI execution environment.

 MPI process are launched in CLI mode (no gui, no plot).


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

#nlink(<mpi:MPI_Initialized>)[MPI\_Initialized];, #nlink(<mpi:MPI_Init>)[MPI\_Init];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
