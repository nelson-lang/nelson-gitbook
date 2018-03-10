

# MPI_Finalize

Terminate the MPI execution environment.

## Syntax

- MPI_Finalize()
- r = MPI_Finalize()

## Output argument

 - r - a logical.

## Description


  <p>Terminate the MPI execution environment.</p>
  <p>MPI process are launched in CLI mode (no gui, no plot).</p>


## See also

[MPI_Initialized](MPI_Initialized.md), [MPI_Init](MPI_Init.md).
## Example

```matlab
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



