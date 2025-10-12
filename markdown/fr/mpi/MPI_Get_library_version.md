# MPI_Get_library_version

Renvoie la version de la bibliothèque MPI.

## Syntaxe

- name = MPI_Get_library_version()

## Argument de sortie

- name - chaîne : version de MPI.

## Description

<p>Cette fonction renvoie la version de la bibliothèque MPI.</p>

## Exemple

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
name = MPI_Get_library_version()
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Get_version](../mpi/MPI_Get_version.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
