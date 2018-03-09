

# MPI_Comm_delete

Removes MPI_Comm object.

## Syntax

- MPI_Comm_delete(h)
- delete(h)

## Input argument

 - h - a handle: a MPI_Comm object.

## Description


  <p><b>delete(h)</b> deletes MPI_Comm object itself.</p>
  <p>Do not forget to clear variable afterward.</p>


## Example

CLI required
```Nelson
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(COM_used())
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end
```

## See also

[MPI_Comm_used](MPI_Comm_used.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



