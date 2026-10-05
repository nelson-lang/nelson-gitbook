#import "nelson_help.typ": *

= MPI\_Comm\_rank <mpi:MPI_Comm_rank>

Détermine le rang du processus appelant dans le communicateur.

== Syntaxe

- #raw("r = MPI_Comm_rank(Comm)");

== Argument d'entrée

/ Comm: un objet MPI\_Comm.

== Argument de sortie

/ r: un entier : rang du processus appelant dans le groupe de Comm.

== Description

Renvoie le rang du processus appelant dans le communicateur spécifié.


== Exemple

mpiexec(\[modulepath('mpi'), '\/examples\/MPI\_helloworld.m'\], 4)

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object()
my_rank = MPI_Comm_rank (comm)
num_ranks = MPI_Comm_size(comm)

TAG= 1;
if (my_rank != 0)
  rankvect = 0;
  MPI_Send(rand(3,3) + my_rank, rankvect, TAG, comm);
else
  disp('MPI master receive:')
  for source = 1:num_ranks - 1
    disp(['From slave ', int2str(source)])
    message = MPI_Recv (source, TAG, comm);
    disp(message)
  end
end

if MPI_Initialized()
  MPI_Finalize();
end
``````


== Voir aussi

#nlink(<mpi:MPI_Comm_size>)[MPI\_Comm\_size];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
