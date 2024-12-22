# MPI_Get_library_version

Return the version number of MPI library.

## Syntax

- name = MPI_Get_library_version()

## Output argument

- name - a string: Version of MPI.

## Description

  <p>This function returns the version number of MPI library.</p>

## See also

[MPI_Get_version](MPI_Get_version.md).

## Example

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
name = MPI_Get_library_version()
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
