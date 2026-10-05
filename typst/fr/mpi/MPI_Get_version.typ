#import "nelson_help.typ": *

= MPI\_Get\_version <mpi:MPI_Get_version>

Renvoie le numéro de version de MPI.

== Syntaxe

- #raw("[major, minor] = MPI_Get_version()");

== Argument de sortie

/ major: entier.
/ minor: an integer value.

== Description

Renvoie le numéro de version de MPI.


== Exemple

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
[major, minor] = MPI_Get_version()
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Init>)[MPI\_Init];, #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
