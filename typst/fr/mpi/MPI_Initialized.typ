#import "nelson_help.typ": *

= MPI\_Initialized <mpi:MPI_Initialized>

Indique si MPI\_Init a été appelé.

== Syntaxe

- #raw("r = MPI_Initialized()");

== Argument de sortie

/ r: logique.

== Description

Indique si MPI\_Init a été appelé.


== Exemple

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
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
