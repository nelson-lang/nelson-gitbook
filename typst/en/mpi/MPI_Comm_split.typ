#import "nelson_help.typ": *

= MPI\_Comm\_split <mpi:MPI_Comm_split>

Partitions the group that is associated with the specified communicator into a specified number of disjoint subgroups.

== Syntax

- #raw("newcomm = MPI_Comm_split(comm, color, key)");

== Input argument

/ comm: a MPI\_Comm object.
/ color: an integer value: The new communicator that the calling process is to be assigned to. The value of color must be non-negative.
/ key: an integer value: The relative rank of the calling process in the group of the new communicator.

== Output argument

/ newcomm: MPI\_Comm object: handle to a new communicator.

== Description

Partitions the group that is associated with the specified communicator into a specified number of disjoint subgroups.


== Example

mpiexec(\[modulepath('mpi'), '\/examples\/help\_examples\/MPI\_Comm\_split.m'\], 10)

``````matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
world_rank = MPI_Comm_rank();
world_size = MPI_Comm_size();

color = world_rank * inv(4);

% Split the communicator based on the color and use the
% original rank for ordering
row_comm = MPI_Comm_split(comm, color, world_rank);

row_rank = MPI_Comm_rank();
row_size = MPI_Comm_size();

disp(['WORLD RANK/SIZE: ',int2str(world_rank), '/', int2str(world_size), ' ROW RANK/SIZE: ', int2str(row_rank), '/', int2str(row_size)]);
if MPI_Initialized()
  MPI_Finalize();
end
``````


== See also

#nlink(<mpi:MPI_Comm_rank>)[MPI\_Comm\_rank];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
