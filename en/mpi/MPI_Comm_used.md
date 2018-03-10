

# MPI_Comm_used

Returns list of current used MPI_Comm handle.

## Syntax

- r = MPI_Comm_used()

## Output argument

 - h - a vector of MPI_Comm handle.

## Description


  <p>Returns list of current used MPI_Comm handle.</p>


## See also

[MPI_Comm_delete](MPI_Comm_delete.md).
## Example

CLI required
```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(comm)
MPI_Comm_used
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



