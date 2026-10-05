#import "nelson_help.typ": *

= MPI\_Bcast <mpi:MPI_Bcast>

Diffuse un message depuis le processus "root" vers tous les autres processus du communicateur

== Syntaxe

- #raw("A = MPI_Bcast(A, Root)");
- #raw("A = MPI_Bcast(A, Root, Comm)");

== Argument d'entrée

/ A: variable Nelson.
/ Root: entier : rang du root de diffusion.
/ Comm: objet MPI\_Comm.

== Argument de sortie

/ A: tableau diffusé.

== Description

Cette fonction est utilisée pour diffuser un tableau à tous les membres du groupe.


== Exemple

mpiexec(\[modulepath('mpi'), '\/examples\/help\_examples\/MPI\_Bcast.m'\], 4)

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank();
num_ranks = MPI_Comm_size();
root = 0;
if (my_rank == 0)
  buff = 777;
else
  buff = 0;
end
disp(['rank: ', int2str(my_rank), ': before Bcast, buff is ', int2str(buff)])
buff = MPI_Bcast(buff, root);
disp(['rank: ', int2str(my_rank), ': after Bcast, buff is ', int2str(buff)])
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Barrier>)[MPI\_Barrier];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
