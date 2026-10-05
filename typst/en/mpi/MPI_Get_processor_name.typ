#import "nelson_help.typ": *

= MPI\_Get\_processor\_name <mpi:MPI_Get_processor_name>

Gets the name of the processor.

== Syntax

- #raw("[name, namelen, info] = MPI_Get_processor_name()");

== Output argument

/ name: a string: name of the processor that is using MPI.
/ namelen: an integer value: Length (in characters) of the name.
/ info: an integer value: 0 MPI\_SUCCESS, 16 MPI\_ERR\_OTHER.

== Description

This function get the name of the processor that is using MPI.


== Example

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end

``````


== See also

#nlink(<mpi:MPI_Init>)[MPI\_Init];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
