# MPI\_Comm\_delete

Supprime un objet MPI\_Comm.

## 📝 Syntaxe

- MPI\_Comm\_delete(h)
- delete(h)

## 📥 Argument d'entrée

- h - handle : objet MPI\_Comm.

## 📄 Description


<b>delete(h)</b> supprime l'objet MPI\_Comm. 

N'oubliez pas de nettoyer la variable ensuite.

## 💡 Exemple

CLI required

```matlab
used = MPI_Comm_used()
```


## 🔗 Voir aussi

[MPI_Comm_used](../mpi/MPI_Comm_used.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
