#import "nelson_help.typ": *

=  <mpi:MPI_examples>

Quelques exemples MPI pour Nelson.

== Description

Voir ci-dessous quelques exemples de base des interfaces MPI disponibles dans Nelson.


== Exemples

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


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
