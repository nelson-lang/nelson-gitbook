#import "nelson_help.typ": *

= MPI\_Comm\_used <mpi:MPI_Comm_used>

Renvoie la liste des handles MPI\_Comm actuellement utilisés.

== Syntaxe

- #raw("r = MPI_Comm_used()");

== Argument de sortie

/ h: vecteur de handles MPI\_Comm.

== Description

Renvoie la liste des handles MPI\_Comm actuellement utilisés.


== Exemple

CLI required

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(comm)
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
