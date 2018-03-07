



MPI_Get_version


MPI_Get_version

Return the version number of MPI.

## Syntax

- [major, minor] = MPI_Get_version()

## Output argument

 - major - an integer value.
 - minor - an integer value.

## Description


  <p>Return the version number of MPI.</p>


## See also

MPI_Init.md MPI_Init, MPI_Finalize.md MPI_Finalize.
## Example

```Nelson
if ~MPI_Initialized()
  MPI_Init();
end
[major, minor] = MPI_Get_version()
if MPI_Initialized()
  MPI_Finalize();
end
```

## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



