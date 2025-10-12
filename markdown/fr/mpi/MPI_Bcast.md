# MPI_Bcast

Diffuse un message depuis le processus "root" vers tous les autres processus du communicateur

## Syntaxe

- A = MPI_Bcast(A, Root)
- A = MPI_Bcast(A, Root, Comm)

## Argument d'entrée

- A - variable Nelson.
- Root - entier : rang du root de diffusion.
- Comm - objet MPI_Comm.

## Argument de sortie

- A - tableau diffusé.

## Description

<p>Cette fonction est utilisée pour diffuser un tableau à tous les membres du groupe.</p>

## Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Bcast.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank();
num_ranks = MPI_Comm_size();
root = 0;
if (my_rank == 0)
  buff = 777;
else
  buff = 0;
end
disp(['rank: ', int2str(my_rank), ': before Bcast, buff is ', int2str(buff)])
buff = MPI_Bcast(buff, root);
disp(['rank: ', int2str(my_rank), ': after Bcast, buff is ', int2str(buff)])
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Barrier](../mpi/MPI_Barrier.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
