# MPI_Comm_delete

Supprime un objet MPI_Comm.

## 📝 Syntaxe

- MPI_Comm_delete(h)
- delete(h)

## 📥 Argument d'entrée

- h - handle : objet MPI_Comm.

## 📄 Description

<b>delete(h)</b> supprime l'objet MPI_Comm.

N'oubliez pas de nettoyer la variable ensuite.

## 💡 Exemple

CLI required

```matlab
used = MPI_Comm_used()
```

## 🔗 Voir aussi

[MPI_Comm_used](../mpi/MPI_Comm_used.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
