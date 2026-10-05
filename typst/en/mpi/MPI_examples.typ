#import "nelson_help.typ": *

=  <mpi:MPI_examples>

Some Nelson MPI examples.

== Description

See below for some basic examples about MPI interfaces available in Nelson.


== Examples

mpiexec(\[modulepath('mpi'), '\/examples\/MPI\_helloworld.m'\], 4)

``````matlab
edit([modulepath('mpi'), '/examples/MPI_helloworld.m'])
``````

mpiexec(\[modulepath('mpi'), '\/examples\/MPI\_simpledemo.m'\], 4)

``````matlab
edit([modulepath('mpi'), '/examples/MPI_simpledemo.m'])
``````

mpiexec(\[modulepath('mpi'), '\/examples\/MPI\_parallel\_sum.m'\], 40)

``````matlab
edit([modulepath('mpi'), '/examples/MPI_parallel_sum.m'])
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
