#import "nelson_help.typ": *

= MPI\_Comm\_delete <mpi:MPI_Comm_delete>

Supprime un objet MPI\_Comm.

== Syntaxe

- #raw("MPI_Comm_delete(h)");
- #raw("delete(h)");

== Argument d'entrée

/ h: handle : objet MPI\_Comm.

== Description

#strong[delete(h)]; supprime l'objet MPI\_Comm.

 N'oubliez pas de nettoyer la variable ensuite.


== Exemple

CLI required

``````matlab
used = MPI_Comm_used()
``````


== Voir aussi

#nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
