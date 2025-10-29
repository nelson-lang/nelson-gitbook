# MPI_Comm_get_name

Return the print name from the communicator.

## 📝 Syntax

- MPI_Comm_get_name(comm)

## 📥 Input argument

- comm - a handle: a MPI_Comm object.

## 📄 Description

<b>MPI_Comm_get_name(comm)</b> returns the print name from the communicator.

## 💡 Example

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_get_name(comm)
delete(comm)
if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 See also

[MPI_Comm_object](../mpi/MPI_Comm_object.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
