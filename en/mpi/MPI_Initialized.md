

# MPI_Initialized

Indicates whether MPI_Init has been called.

## Syntax

- r = MPI_Initialized()

## Output argument

 - r - a logical.

## Description


  <p>Indicates whether MPI_Init has been called.</p>


## See also

[MPI_Init](MPI_Init.md), [MPI_Finalize](MPI_Finalize.md).
## Example

```Nelson
if ~MPI_Initialized()
  MPI_Init();
end
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



