# MPI_Get_processor_name

Récupère le nom du processeur.

## Syntaxe

- [name, namelen, info] = MPI_Get_processor_name()

## Argument de sortie

- name - chaîne : nom du processeur utilisant MPI.
- namelen - entier : longueur (en caractères) du nom.
- info - entier : 0 MPI_SUCCESS, 16 MPI_ERR_OTHER.

## Description

<p>Cette fonction récupère le nom du processeur utilisant MPI.</p>

## Exemple

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Init](../mpi/MPI_Init.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
