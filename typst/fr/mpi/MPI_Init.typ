#import "nelson_help.typ": *

= MPI\_Init <mpi:MPI_Init>

Initialise l'environnement d'exécution MPI.

== Syntaxe

- #raw("MPI_Init()");
- #raw("r = MPI_Init()");

== Argument de sortie

/ r: logique.

== Description

Initialise l'environnement d'exécution MPI.

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

#nlink(<mpi:MPI_Initialized>)[MPI\_Initialized];, #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
