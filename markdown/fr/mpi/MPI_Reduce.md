# MPI\_Reduce

Réduit les valeurs de tous les processus en une seule valeur.

## 📝 Syntaxe

- r = MPI\_Reduce(Value, Operation, Root)
- r = MPI\_Reduce(Value, Operation, Root, Comm)

## 📥 Argument d'entrée

- Value - valeur à envoyer : tableau numérique ou logique (sparse non supporté).
- Operation - chaîne : MPI\_SUM, MPI\_MAX, MPI\_MIN, MPI\_PROD, MPI\_LAND, MPI\_LOR, MPI\_BAND, MPI\_BOR, MPI\_LXOR ou MPI\_BXOR
- Root - entier : rang du processus root.
- Comm - a MPI\_Comm object.

## 📤 Argument de sortie

- r - valeur reçue

## 📄 Description


Réduit les valeurs de tous les processus en une seule valeur. 

Nelson ne vérifie pas que les tableaux fournis aux opérations de réduction sont de la même taille sur tous les processus du groupe. 

Assurez-vous que chaque processus passe un tableau de la même taille à MPI\_Reduce.

## 💡 Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Reduce.m'], 4)

```matlab

if ~MPI_Initialized()
  MPI_Init();
end
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();

A = [1 + my_rank:3 + my_rank]
B = MPI_Reduce(A, 'MPI_SUM', 0);
if (my_rank == 0)
  disp('Result:')
  B
end
if MPI_Initialized()
  MPI_Finalize();
end

```


## 🔗 Voir aussi

[MPI_Allreduce](../mpi/MPI_Allreduce.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
