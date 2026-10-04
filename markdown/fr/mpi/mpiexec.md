# mpiexec

Exécute un script MPI.

## 📝 Syntaxe

- mpiexec(script)
- mpiexec(script, nb_process)
- r = mpiexec(script, nb_process)
- [r, msg] = mpiexec(script, nb_process)

## 📥 Argument d'entrée

- script - un nom de fichier avec l'extension .m.
- nb_process - un entier : nombre de processus.

## 📤 Argument de sortie

- r - un entier : maximum des codes de sortie de tous les processus créés par mpiexec.

## 📄 Description

Exécute un script MPI dans Nelson.

Les processus MPI sont lancés en mode CLI (sans interface graphique, sans tracé).

## 💡 Exemple

```matlab

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Allreduce.m'], 4)
```

## 🔗 Voir aussi

[MPI_Init](../mpi/MPI_Init.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
