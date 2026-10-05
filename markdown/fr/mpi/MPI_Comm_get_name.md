# MPI\_Comm\_get\_name

Renvoie le nom d'impression du communicateur.

## 📝 Syntaxe

- MPI\_Comm\_get\_name(comm)

## 📥 Argument d'entrée

- comm - handle : objet MPI\_Comm.

## 📄 Description


<b>MPI\_Comm\_get\_name(comm)</b> renvoie le nom imprimable du communicateur.

## 💡 Exemple

CLI required

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
MPI_Comm_get_name(comm)
delete(comm)
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 Voir aussi

[MPI_Comm_object](../mpi/MPI_Comm_object.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
