# MPI_Recv

Blocking receive for a message.

## Syntax

- r = MPI_Recv(Source, Tag)
- [r, mpi_source, mpi_tag] = MPI_Reduce(Source, Tag, Comm)

## Input argument

- Source - an integer value: rank of source.
- Tag - an integer value: message tag.
- Comm - a MPI_Comm object.

## Output argument

- r - received value

## Description

<p>This function receives an array from a source node on a given communicator with the specified tag.</p>

<p>Throws an exception if there is an error.</p>

<p>Receive arrays of arbitrary complexity, including cell arrays, structures, strings, sparse, etc ...</p>

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

[MPI_Send](../mpi/MPI_Send.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
