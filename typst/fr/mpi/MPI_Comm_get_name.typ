#import "nelson_help.typ": *

= MPI\_Comm\_get\_name <mpi:MPI_Comm_get_name>

Renvoie le nom d'impression du communicateur.

== Syntaxe

- #raw("MPI_Comm_get_name(comm)");

== Argument d'entrée

/ comm: handle : objet MPI\_Comm.

== Description

#strong[MPI\_Comm\_get\_name(comm)]; renvoie le nom imprimable du communicateur.


== Exemple

CLI required

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_get_name(comm)
delete(comm)
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Comm_object>)[MPI\_Comm\_object];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
