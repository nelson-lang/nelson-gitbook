# MPI_Send

Effectue un envoi bloquant.

## Syntaxe

- MPI_Send(A, destination, tag)
- MPI_Send(A, destination, tag, comm)

## Argument d'entrée

- A - un tableau Nelson à envoyer.
- destination - entier : rang de la destination.
- tag - entier : tag du message.
- comm - a MPI_Comm object.

## Description

<p>Cette fonction envoie un tableau à un nœud destination sur un communicateur donné avec un tag spécifique.</p>

<p>Notez qu'un receive correspondant doit être effectué par le nœud de destination.</p>

<p>Lance une exception en cas d'erreur.</p>

## Exemple

mpiexec([modulepath('mpi'), '/examples/MPI_helloworld.m'], 4)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object()
my_rank = MPI_Comm_rank (comm)
num_ranks = MPI_Comm_size(comm)

TAG= 1;
if (my_rank != 0)
  rankvect = 0;
  MPI_Send(rand(3,3) + my_rank, rankvect, TAG, comm);
else
  disp('MPI master receive:')
  for source = 1:num_ranks - 1
    disp(['From slave ', int2str(source)])
    message = MPI_Recv (source, TAG, comm);
    disp(message)
  end
end

if MPI_Initialized()
  MPI_Finalize();
end
```

## Voir aussi

[MPI_Recv](../mpi/MPI_Recv.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
