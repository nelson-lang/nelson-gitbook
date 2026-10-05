#import "nelson_help.typ": *

= MPI\_Barrier <mpi:MPI_Barrier>

Bloque jusqu'à ce que tous les processus du communicateur atteignent cette routine.

== Syntaxe

- #raw("r = MPI_Barrier(Comm)");

== Argument d'entrée

/ Comm: objet MPI\_Comm.

== Argument de sortie

/ r: entier : MPI\_SUCCESS (0) ou MPI\_ERR\_COMM (5).

== Description

Cette fonction est utilisée comme point de synchronisation pour tous les processus d'un groupe. Tous les processus sont bloqués jusqu'à ce que chacun appelle MPI\_Barrier.


== Exemple

mpiexec(\[modulepath('mpi'), '\/examples\/help\_examples\/MPI\_Barrier.m'\], 4)

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();
comm = MPI_Comm_object('MPI_COMM_WORLD');
sleep(my_rank);
MPI_Barrier(comm);
disp(['I am ', int2str(my_rank), ' of ', int2str(num_ranks)]);
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Initialized>)[MPI\_Initialized];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
