#import "nelson_help.typ": *

= MPI\_Init <mpi:MPI_Init>

Initialize the MPI execution environment.

== Syntax

- #raw("MPI_Init()");
- #raw("r = MPI_Init()");

== Output argument

/ r: a logical.

== Description

Initialize the MPI execution environment.

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

#nlink(<mpi:MPI_Initialized>)[MPI\_Initialized];, #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
