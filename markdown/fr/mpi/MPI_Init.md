# MPI_Init

Initialise l'environnement d'exécution MPI.

## Syntaxe

- MPI_Init()
- r = MPI_Init()

## Argument de sortie

- r - logique.

## Description

<p>Initialise l'environnement d'exécution MPI.</p>

<p>Les processus MPI sont lancés en mode CLI (pas d'interface graphique, pas d'affichage).</p>

## Exemple

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Initialized](../mpi/MPI_Initialized.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
