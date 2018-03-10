

# MPI_Comm_object

Creates MPI_Comm object.

## Syntax

- comm = MPI_Comm_object()
- comm = MPI_Comm_object(str)

## Input argument

 - str - a string: MPI_COMM_SELF, or MPI_COMM_WORLD.

## Description


  <p><b>MPI_Comm_object(h)</b> creates an MPI_Comm object.</p>


## Example

CLI required
```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(MPI_Comm_used())
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end
```

## See also

[MPI_Comm_used](MPI_Comm_used.md), [MPI_Comm_delete](MPI_Comm_delete.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



