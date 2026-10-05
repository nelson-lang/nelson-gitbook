# mpiexec

Run an MPI script.

## 📝 Syntax

- mpiexec(script)
- mpiexec(script, nb\_process)
- r = mpiexec(script, nb\_process)
- [r, msg] = mpiexec(script, nb\_process)

## 📥 Input argument

- script - an filename with .m extension.
- nb\_process - an integer value: number of process.

## 📤 Output argument

- r - an integer value: maximum of the exit status values of all of the processes created by mpiexec.

## 📄 Description


Run an MPI script in nelson. 

MPI process are launched in CLI mode (no gui, no plot).

## 💡 Example



```matlab

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Allreduce.m'], 4)
```


## 🔗 See also

[MPI_Init](../mpi/MPI_Init.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
