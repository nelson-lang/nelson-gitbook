# MPI_Allreduce

Combine les valeurs de tous les processus et distribue le résultat à tous les processus.

## Syntaxe

- r = MPI_Allreduce(Value, Operation, Comm)

## Argument d'entrée

- Value - valeur à envoyer : tableau numérique ou logique (sparse non supporté).
- Operation - chaîne : MPI_SUM, MPI_MAX, MPI_MIN, MPI_PROD, MPI_LAND, MPI_LOR, MPI_BAND, MPI_BOR, MPI_LXOR ou MPI_BXOR
- Comm - a MPI_Comm object.

## Argument de sortie

- r - valeur reçue

## Description

<p>Combine les valeurs de tous les processus et distribue le résultat à tous les processus.</p>

<p>Nelson ne vérifie pas que les tableaux fournis aux opérations de réduction sont de la même taille sur tous les processus du groupe.</p>

<p>Assurez-vous que chaque processus passe un tableau de la même taille à MPI_Allreduce.</p>

## Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Allreduce.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();

A = [1 + my_rank:3 + my_rank]
B = MPI_Allreduce(A, 'MPI_PROD', comm);
if (my_rank == 0)
  disp('Result:')
  disp(B);
end
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Reduce](../mpi/MPI_Reduce.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
