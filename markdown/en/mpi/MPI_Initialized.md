# MPI_Initialized

Indicates whether MPI_Init has been called.

## 📝 Syntax

- r = MPI_Initialized()

## 📤 Output argument

- r - a logical.

## 📄 Description

Indicates whether MPI_Init has been called.

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

[MPI_Init](../mpi/MPI_Init.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
