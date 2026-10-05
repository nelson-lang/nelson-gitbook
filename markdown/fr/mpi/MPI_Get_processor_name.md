# MPI\_Get\_processor\_name

Récupère le nom du processeur.

## 📝 Syntaxe

- [name, namelen, info] = MPI\_Get\_processor\_name()

## 📤 Argument de sortie

- name - chaîne : nom du processeur utilisant MPI.
- namelen - entier : longueur (en caractères) du nom.
- info - entier : 0 MPI\_SUCCESS, 16 MPI\_ERR\_OTHER.

## 📄 Description


Cette fonction récupère le nom du processeur utilisant MPI.

## 💡 Exemple



```matlab

if ~MPI_Initialized()
  MPI_Init();
end
[name, len, info] = MPI_Get_processor_name()
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 Voir aussi

[MPI_Init](../mpi/MPI_Init.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
