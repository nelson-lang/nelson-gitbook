# MPI_Send

Performs a blocking send.

## Syntax

- MPI_Send(A, destination, tag)
- MPI_Send(A, destination, tag, comm)

## Input argument

- A - an nelson array to send.
- destination - an integer value: rank of source.
- tag - an integer value: message tag.
- comm - a MPI_Comm object.

## Description

<p>This function sends an array to a destination node on a given communicator with a specific message tag.</p>

<p>Note that there has to be a matching receive issued by the destination node.</p>

<p>Throws an exception if there is an error.</p>

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

## See also

[MPI_Recv](../mpi/MPI_Recv.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
