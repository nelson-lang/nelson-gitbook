# MPI\_Get\_processor\_name

Gets the name of the processor.

## 📝 Syntax

- [name, namelen, info] = MPI\_Get\_processor\_name()

## 📤 Output argument

- name - a string: name of the processor that is using MPI.
- namelen - an integer value: Length (in characters) of the name.
- info - an integer value: 0 MPI\_SUCCESS, 16 MPI\_ERR\_OTHER.

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

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
