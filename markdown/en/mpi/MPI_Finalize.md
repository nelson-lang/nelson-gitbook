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

## Example

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
if MPI_Initialized()
  MPI_Finalize();
end

```

## See also

[MPI_Initialized](../mpi/MPI_Initialized.md), [MPI_Init](../mpi/MPI_Init.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
