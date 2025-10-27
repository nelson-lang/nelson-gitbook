# MPI_Iprobe

Nonblocking test for a message.

## 📝 Syntax

- [flag, stat, info] = MPI_Iprobe(rank, tag)
- [flag, stat, info] = MPI_Iprobe(rank, tag, comm)

## 📥 Input argument

- rank - an integer value: source rank.
- tag - an integer value: message tag.
- comm - a MPI_Comm object.

## 📤 Output argument

- flag - an integer value: 1 if the message is ready to be received, 0 if it is not.
- stat - a struct: source rank, message tag, error, count, cancelled for the accepted message.
- info - an integer value: 0 (MPI_SUCCESS) other value is an error.

## 📄 Description

Nonblocking test for a message.

## 💡 Example

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Iprobe.m'], 4)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
world_rank = MPI_Comm_rank();
world_size = MPI_Comm_size();

[FLAG, STAT, INFO] = MPI_Iprobe(world_rank,1, comm)

if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 See also

[MPI_Probe](../mpi/MPI_Probe.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
