# MPI_Comm_rank

Determines the rank of the calling process in the communicator.

## Syntax

- r = MPI_Comm_rank(Comm)

## Input argument

- Comm - a MPI_Comm object.

## Output argument

- r - an integer value: rank of the calling process in the group of Comm.

## Description

  <p>Return the rank of the calling process in the specified communicator.</p>

## See also

[MPI_Comm_size](MPI_Comm_size.md).

## Example

mpiexec([modulepath('mpi'), '/examples/MPI_helloworld.m'], 4)

```matlab
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
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
