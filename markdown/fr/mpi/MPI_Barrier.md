# MPI_Barrier

Bloque jusqu'à ce que tous les processus du communicateur atteignent cette routine.

## Syntaxe

- r = MPI_Barrier(Comm)

## Argument d'entrée

- Comm - objet MPI_Comm.

## Argument de sortie

- r - entier : MPI_SUCCESS (0) ou MPI_ERR_COMM (5).

## Description

<p>Cette fonction est utilisée comme point de synchronisation pour tous les processus d'un groupe. Tous les processus sont bloqués jusqu'à ce que chacun appelle MPI_Barrier.</p>

## Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Barrier.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();
comm = MPI_Comm_object('MPI_COMM_WORLD');
sleep(my_rank);
MPI_Barrier(comm);
disp(['I am ', int2str(my_rank), ' of ', int2str(num_ranks)]);
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Initialized](../mpi/MPI_Initialized.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
