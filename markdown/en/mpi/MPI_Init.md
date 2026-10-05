# MPI\_Init

Initialize the MPI execution environment.

## 📝 Syntax

- MPI\_Init()
- r = MPI\_Init()

## 📤 Output argument

- r - a logical.

## 📄 Description


Initialize the MPI execution environment. 

MPI process are launched in CLI mode (no gui, no plot).

## 💡 Example



```matlab
if ~MPI_Initialized()
  MPI_Init();
end
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 See also

[MPI_Initialized](../mpi/MPI_Initialized.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
