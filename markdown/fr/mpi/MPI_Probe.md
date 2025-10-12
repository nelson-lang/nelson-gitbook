# MPI_Probe

Test bloquant pour un message.

## Syntaxe

- [flag, stat, info] = MPI_Probe(rank, tag)
- [flag, stat, info] = MPI_Probe(rank, tag, comm)

## Argument d'entrée

- rank - entier : rang de la source.
- tag - entier : étiquette (tag) du message.
- comm - objet MPI_Comm.

## Argument de sortie

- flag - entier : 1 si le message est prêt à être reçu, 0 sinon.
- stat - struct : rang source, tag du message, erreur, count, cancelled pour le message accepté.
- info - entier : 0 (MPI_SUCCESS), toute autre valeur indique une erreur.

## Description

<p>Test bloquant pour vérifier la présence d'un message.</p>

## Voir aussi

[MPI_IProbe](../mpi/MPI_IProbe.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
