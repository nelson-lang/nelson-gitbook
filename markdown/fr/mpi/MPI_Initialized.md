# MPI_Initialized

Indique si MPI_Init a été appelé.

## 📝 Syntaxe

- r = MPI_Initialized()

## 📤 Argument de sortie

- r - logique.

## 📄 Description

Indique si MPI_Init a été appelé.

## 💡 Exemple

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
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
