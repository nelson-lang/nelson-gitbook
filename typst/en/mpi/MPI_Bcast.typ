#import "nelson_help.typ": *

= MPI\_Bcast <mpi:MPI_Bcast>

Broadcasts a message from the process with rank "root" to all other processes of the communicator

== Syntax

- #raw("A = MPI_Bcast(A, Root)");
- #raw("A = MPI_Bcast(A, Root, Comm)");

== Input argument

/ A: a nelson variable.
/ Root: a integer value: rank of broadcast root.
/ Comm: a MPI\_Comm object.

== Output argument

/ A: broadcasted array.

== Description

This function is used to broadcast an array to all group members.


== Example

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


== See also

#nlink(<mpi:MPI_Barrier>)[MPI\_Barrier];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
