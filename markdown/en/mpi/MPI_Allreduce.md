# MPI\_Allreduce

Combines values from all processes and distributes the result back to all processes.

## 📝 Syntax

- r = MPI\_Allreduce(Value, Operation, Comm)

## 📥 Input argument

- Value - value to send: numeric or logical array (sparse not supported).
- Operation - a string: MPI\_SUM, MPI\_MAX, MPI\_MIN, MPI\_SUM, MPI\_PROD, MPI\_LAND, MPI\_LOR, MPI\_BAND, MPI\_BOR, MPI\_LXOR or MPI\_BXOR
- Comm - a MPI\_Comm object.

## 📤 Output argument

- r - received value

## 📄 Description


Combines values from all processes and distributes the result back to all processes. 

Nelson does not check to ensure that the reduction operation are all the same size across the various processes in the group. 

Please be sure that each process passes the same sized array to the MPI\_Allreduce operation.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
