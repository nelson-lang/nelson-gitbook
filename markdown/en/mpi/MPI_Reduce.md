# MPI\_Reduce

Reduces values on all processes to a single value.

## 📝 Syntax

- r = MPI\_Reduce(Value, Operation, Root)
- r = MPI\_Reduce(Value, Operation, Root, Comm)

## 📥 Input argument

- Value - value to send: numeric or logical array (sparse not supported).
- Operation - a string: MPI\_SUM, MPI\_MAX, MPI\_MIN, MPI\_SUM, MPI\_PROD, MPI\_LAND, MPI\_LOR, MPI\_BAND, MPI\_BOR, MPI\_LXOR or MPI\_BXOR
- Root - a integer value: rank of root process.
- Comm - a MPI\_Comm object.

## 📤 Output argument

- r - received value

## 📄 Description


Reduces values on all processes to a single value. 

Nelson does not check to ensure that the reduction operation are all the same size across the various processes in the group. 

Please be sure that each process passes the same sized array to the MPI\_Allreduce operation.

## 💡 Example

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


## 🔗 See also

[MPI_Allreduce](../mpi/MPI_Allreduce.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
