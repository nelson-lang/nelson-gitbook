# mpiexec

Run an MPI script.

## Syntax

- mpiexec(script)
- mpiexec(script, nb_process)
- r = mpiexec(script, nb_process)
- [r, msg] = mpiexec(script, nb_process)

## Input argument

- script - an filename with .m extension.
- nb_process - an integer value: number of process.

## Output argument

- r - an integer value: maximum of the exit status values of all of the processes created by mpiexec.

## Description

<p>Run an MPI script in nelson.</p>

<p>MPI process are launched in CLI mode (no gui, no plot).</p>

## Example

```matlab

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Allreduce.m'], 4)
```

## See also

[MPI_Init](../mpi/MPI_Init.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
