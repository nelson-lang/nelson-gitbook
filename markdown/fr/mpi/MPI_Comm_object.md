# MPI_Comm_object

Creates MPI_Comm object.

## 📝 Syntaxe

- comm = MPI_Comm_object()
- comm = MPI_Comm_object(str)

## 📥 Argument d'entrée

- str - a string: MPI_COMM_SELF, or MPI_COMM_WORLD.

## 📄 Description

<b>MPI_Comm_object(h)</b> creates an MPI_Comm object.

## 💡 Exemple

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(MPI_Comm_used())
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 Voir aussi

[MPI_Comm_used](../mpi/MPI_Comm_used.md), [MPI_Comm_delete](../mpi/MPI_Comm_delete.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
