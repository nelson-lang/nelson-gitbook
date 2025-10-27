# MPI_Get_version

Renvoie le numéro de version de MPI.

## 📝 Syntaxe

- [major, minor] = MPI_Get_version()

## 📤 Argument de sortie

- major - entier.
- minor - an integer value.

## 📄 Description

Renvoie le numéro de version de MPI.

## 💡 Exemple

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
[major, minor] = MPI_Get_version()
if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 Voir aussi

[MPI_Init](../mpi/MPI_Init.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
