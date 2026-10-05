# MPI\_Init

Initialise l'environnement d'exécution MPI.

## 📝 Syntaxe

- MPI\_Init()
- r = MPI\_Init()

## 📤 Argument de sortie

- r - logique.

## 📄 Description


Initialise l'environnement d'exécution MPI. 

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

[MPI_Initialized](../mpi/MPI_Initialized.md), [MPI_Finalize](../mpi/MPI_Finalize.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
