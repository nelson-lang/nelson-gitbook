# MPI_Iprobe

Test non-bloquant pour un message.

## Syntaxe

- [flag, stat, info] = MPI_Iprobe(rank, tag)
- [flag, stat, info] = MPI_Iprobe(rank, tag, comm)

## Argument d'entrée

- rank - entier : rang de la source.
- tag - an integer value: message tag.
- comm - a MPI_Comm object.

## Argument de sortie

- flag - entier : 1 si le message est prêt à être reçu, 0 sinon.
- stat - struct : rang source, tag du message, erreur, count, cancelled pour le message accepté.
- info - entier : 0 (MPI_SUCCESS), toute autre valeur indique une erreur.

## Description

<p>Test non-bloquant pour vérifier la présence d'un message.</p>

## Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Iprobe.m'], 4)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
world_rank = MPI_Comm_rank();
world_size = MPI_Comm_size();

[FLAG, STAT, INFO] = MPI_Iprobe(world_rank,1, comm)

if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Probe](../mpi/MPI_Probe.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
