# MPI_Get_processor_name

Gets the name of the processor.

## Syntax

- [name, namelen, info] = MPI_Get_processor_name()

## Output argument

- name - a string: name of the processor that is using MPI.
- namelen - an integer value: Length (in characters) of the name.
- info - an integer value: 0 MPI_SUCCESS, 16 MPI_ERR_OTHER.

## Description

  <p>This function get the name of the processor that is using MPI.</p>

## See also

[MPI_Init](MPI_Init.md).

## Example

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
