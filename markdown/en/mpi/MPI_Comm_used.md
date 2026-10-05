# MPI\_Comm\_used

Returns the current valid MPI\_Comm handles.

## 📝 Syntax

- r = MPI\_Comm\_used()

## 📤 Output argument

- h - a vector of MPI\_Comm handle.

## 📄 Description


Returns the current valid MPI\_Comm handles.

## 💡 Example

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(comm)
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 See also

[MPI_Comm_delete](../mpi/MPI_Comm_delete.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
