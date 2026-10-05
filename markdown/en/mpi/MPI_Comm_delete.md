# MPI\_Comm\_delete

Removes MPI\_Comm object.

## 📝 Syntax

- MPI\_Comm\_delete(h)
- delete(h)

## 📥 Input argument

- h - a handle: a MPI\_Comm object.

## 📄 Description


<b>delete(h)</b> deletes MPI\_Comm object itself. 

Do not forget to clear variable afterward.

## 💡 Example

CLI required

```matlab
used = MPI_Comm_used()
```


## 🔗 See also

[MPI_Comm_used](../mpi/MPI_Comm_used.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
