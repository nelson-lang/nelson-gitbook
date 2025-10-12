# MPI_Comm_delete

Supprime un objet MPI_Comm.

## Syntaxe

- MPI_Comm_delete(h)
- delete(h)

## Argument d'entrée

- h - handle : objet MPI_Comm.

## Description

<p>delete(h) supprime l'objet MPI_Comm.</p>

<p>N'oubliez pas de nettoyer la variable ensuite.</p>

## Exemple

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(COM_used())
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

```

## Voir aussi

[MPI_Comm_used](../mpi/MPI_Comm_used.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
