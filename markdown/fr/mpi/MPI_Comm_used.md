# MPI\_Comm\_used

Renvoie la liste des handles MPI\_Comm actuellement utilisés.

## 📝 Syntaxe

- r = MPI\_Comm\_used()

## 📤 Argument de sortie

- h - vecteur de handles MPI\_Comm.

## 📄 Description


Renvoie la liste des handles MPI\_Comm actuellement utilisés.

## 💡 Exemple

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_used
delete(comm)
MPI_Comm_used
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 Voir aussi

[MPI_Comm_delete](../mpi/MPI_Comm_delete.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
