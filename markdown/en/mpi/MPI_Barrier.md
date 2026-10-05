# MPI\_Barrier

Blocks until all processes in the communicator have reached this routine.

## 📝 Syntax

- r = MPI\_Barrier(Comm)

## 📥 Input argument

- Comm - a MPI\_Comm object.

## 📤 Output argument

- r - integer value: MPI\_SUCCESS (0) or MPI\_ERR\_COMM (5).

## 📄 Description


This function is used as a synchronization point for all processes in a group. All processes are blocked until every process calls MPI\_Barrier.

## 💡 Example

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Barrier.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();
comm = MPI_Comm_object('MPI_COMM_WORLD');
sleep(my_rank);
MPI_Barrier(comm);
disp(['I am ', int2str(my_rank), ' of ', int2str(num_ranks)]);
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 See also

[MPI_Initialized](../mpi/MPI_Initialized.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
