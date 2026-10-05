#import "nelson_help.typ": *

=  <mpi:MPI_overview>

Accès aux fonctionnalités MPI depuis Nelson.

== Description

Comme beaucoup d'applications MPI, MPI\/Nelson doit être lancée via la commande mpiexec\/mpirun.

 Les fonctionnalités MPI sont uniquement disponibles en mode CLI. Toutefois, vous pouvez les invoquer depuis d'autres modes en utilisant le builtin mpiexec.


== Voir aussi

#nlink(<mpi:mpiexec>)[mpiexec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
