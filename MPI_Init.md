



MPI_Init


MPI_Init

Initialize the MPI execution environment.

## Syntax

- MPI_Init()
- r = MPI_Init()

## Output argument

 - r - a logical.

## Description


  <p>Initialize the MPI execution environment.</p>
  <p>MPI process are launched in CLI mode (no gui, no plot).</p>


## See also

MPI_Initialized.md MPI_Initialized, MPI_Finalize.md MPI_Finalize.
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



