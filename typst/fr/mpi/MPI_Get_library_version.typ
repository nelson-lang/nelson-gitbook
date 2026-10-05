#import "nelson_help.typ": *

= MPI\_Get\_library\_version <mpi:MPI_Get_library_version>

Renvoie la version de la bibliothèque MPI.

== Syntaxe

- #raw("name = MPI_Get_library_version()");

== Argument de sortie

/ name: chaîne : version de MPI.

== Description

Cette fonction renvoie la version de la bibliothèque MPI.


== Exemple

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
name = MPI_Get_library_version()
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Get_version>)[MPI\_Get\_version];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
