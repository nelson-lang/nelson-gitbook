# MPI_Reduce

Reduces values on all processes to a single value.

## Syntax

- r = MPI_Reduce(Value, Operation, Root)
- r = MPI_Reduce(Value, Operation, Root, Comm)

## Input argument

- Value - value to send: numeric or logical array (sparse not supported).
- Operation - a string: MPI_SUM, MPI_MAX, MPI_MIN, MPI_SUM, MPI_PROD, MPI_LAND, MPI_LOR, MPI_BAND, MPI_BOR, MPI_LXOR or MPI_BXOR
- Root - a integer value: rank of root process.
- Comm - a MPI_Comm object.

## Output argument

- r - received value

## Description

  <p>Reduces values on all processes to a single value.</p>
  <p>Nelson does not check to ensure that the reduction operation are all the same size across the various processes in the group.</p>
  <p>Please be sure that each process passes the same sized array to the MPI_Allreduce operation.</p>

## See also

[MPI_Allreduce](MPI_Allreduce.md).

## Example

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Reduce.m'], 4)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();

A = [1 + my_rank:3 + my_rank]
B = MPI_Reduce(A, 'MPI_SUM', 0);
if (my_rank == 0)
  disp('Result:')
  B
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
