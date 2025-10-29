# MPI_Get_processor_name

Gets the name of the processor.

## 📝 Syntax

- [name, namelen, info] = MPI_Get_processor_name()

## 📤 Output argument

- name - a string: name of the processor that is using MPI.
- namelen - an integer value: Length (in characters) of the name.
- info - an integer value: 0 MPI_SUCCESS, 16 MPI_ERR_OTHER.

## 📄 Description

This function get the name of the processor that is using MPI.

## 💡 Example

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 See also

[MPI_Init](../mpi/MPI_Init.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
