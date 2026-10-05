#import "nelson_help.typ": *

= MPI\_Comm\_object <mpi:MPI_Comm_object>

Crée un objet MPI\_Comm.

== Syntaxe

- #raw("comm = MPI_Comm_object()");
- #raw("comm = MPI_Comm_object(str)");

== Argument d'entrée

/ str: une chaîne : MPI\_COMM\_SELF ou MPI\_COMM\_WORLD.

== Description

#strong[MPI\_Comm\_object(h)]; crée un objet MPI\_Comm.


== Exemple

CLI required

``````matlab
used = MPI_Comm_used()
``````


== Voir aussi

#nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used];, #nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
