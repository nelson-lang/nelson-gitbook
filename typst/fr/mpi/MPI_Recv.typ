#import "nelson_help.typ": *

= MPI\_Recv <mpi:MPI_Recv>

Réception bloquante d'un message.

== Syntaxe

- #raw("r = MPI_Recv(Source, Tag)");
- #raw("[r, mpi_source, mpi_tag] = MPI_Reduce(Source, Tag, Comm)");

== Argument d'entrée

/ Source: entier : rang de la source.
/ Tag: an integer value: message tag.
/ Comm: a MPI\_Comm object.

== Argument de sortie

/ r: valeur reçue

== Description

Cette fonction reçoit un tableau depuis un nœud source sur un communicateur donné avec le tag spécifié.

 Lance une exception en cas d'erreur.

 Permet de recevoir des tableaux de complexité arbitraire, y compris cellules, structures, chaînes, matrices creuses, etc.


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

#nlink(<mpi:MPI_Send>)[MPI\_Send];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
