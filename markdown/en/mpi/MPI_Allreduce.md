# MPI_Allreduce

Combines values from all processes and distributes the result back to all processes.

## 📝 Syntax

- r = MPI_Allreduce(Value, Operation, Comm)

## 📥 Input argument

- Value - value to send: numeric or logical array (sparse not supported).
- Operation - a string: MPI_SUM, MPI_MAX, MPI_MIN, MPI_SUM, MPI_PROD, MPI_LAND, MPI_LOR, MPI_BAND, MPI_BOR, MPI_LXOR or MPI_BXOR
- Comm - a MPI_Comm object.

## 📤 Output argument

- r - received value

## 📄 Description

Combines values from all processes and distributes the result back to all processes.

Nelson does not check to ensure that the reduction operation are all the same size across the various processes in the group.

Please be sure that each process passes the same sized array to the MPI_Allreduce operation.

## 💡 Example

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Allreduce.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();

A = [1 + my_rank:3 + my_rank]
B = MPI_Allreduce(A, 'MPI_PROD', comm);
if (my_rank == 0)
  disp('Result:')
  disp(B);
end
if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 See also

[MPI_Reduce](../mpi/MPI_Reduce.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
