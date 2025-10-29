# MPI_Finalize

Termine l'environnement d'exécution MPI.

## 📝 Syntaxe

- MPI_Finalize()
- r = MPI_Finalize()

## 📤 Argument de sortie

- r - logique.

## 📄 Description

Termine l'environnement d'exécution MPI.

Les processus MPI sont lancés en mode CLI (pas d'interface graphique, pas d'affichage).

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

[MPI_Initialized](../mpi/MPI_Initialized.md), [MPI_Init](../mpi/MPI_Init.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
