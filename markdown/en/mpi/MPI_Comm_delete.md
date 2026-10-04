# MPI_Comm_delete

Removes MPI_Comm object.

## 📝 Syntax

- MPI_Comm_delete(h)
- delete(h)

## 📥 Input argument

- h - a handle: a MPI_Comm object.

## 📄 Description

<b>delete(h)</b> deletes MPI_Comm object itself.

Do not forget to clear variable afterward.

## 💡 Example

CLI required

```matlab
used = MPI_Comm_used()
```

## 🔗 See also

[MPI_Comm_used](../mpi/MPI_Comm_used.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
