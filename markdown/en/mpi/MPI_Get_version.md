# MPI\_Get\_version

Return the version number of MPI.

## 📝 Syntax

- [major, minor] = MPI\_Get\_version()

## 📤 Output argument

- major - an integer value.
- minor - an integer value.

## 📄 Description


Return the version number of MPI.

## 💡 Example



```matlab
if ~MPI_Initialized()
  MPI_Init();
end
[major, minor] = MPI_Get_version()
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 See also

[MPI_Init](../mpi/MPI_Init.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
