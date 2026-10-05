#import "nelson_help.typ": *

= MPI\_Get\_processor\_name <mpi:MPI_Get_processor_name>

Récupère le nom du processeur.

== Syntaxe

- #raw("[name, namelen, info] = MPI_Get_processor_name()");

== Argument de sortie

/ name: chaîne : nom du processeur utilisant MPI.
/ namelen: entier : longueur (en caractères) du nom.
/ info: entier : 0 MPI\_SUCCESS, 16 MPI\_ERR\_OTHER.

== Description

Cette fonction récupère le nom du processeur utilisant MPI.


== Exemple

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Init>)[MPI\_Init];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
