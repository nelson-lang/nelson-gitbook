#import "nelson_help.typ": *

= MPI\_Finalize <mpi:MPI_Finalize>

Termine l'environnement d'exécution MPI.

== Syntaxe

- #raw("MPI_Finalize()");
- #raw("r = MPI_Finalize()");

== Argument de sortie

/ r: logique.

== Description

Termine l'environnement d'exécution MPI.

 Les processus MPI sont lancés en mode CLI (pas d'interface graphique, pas d'affichage).


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

#nlink(<mpi:MPI_Initialized>)[MPI\_Initialized];, #nlink(<mpi:MPI_Init>)[MPI\_Init];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
