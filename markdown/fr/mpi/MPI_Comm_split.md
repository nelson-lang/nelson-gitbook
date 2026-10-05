# MPI\_Comm\_split

Partitionne le groupe associé au communicateur spécifié en un nombre donné de sous-groupes disjoints.

## 📝 Syntaxe

- newcomm = MPI\_Comm\_split(comm, color, key)

## 📥 Argument d'entrée

- comm - objet MPI\_Comm.
- color - entier : identifiant du sous-groupe auquel le processus appelant sera affecté. La valeur de<code>color</code>doit être non négative.
- key - entier : rang relatif du processus appelant dans le groupe du nouveau communicateur.

## 📤 Argument de sortie

- newcomm - objet MPI\_Comm : descripteur d'un nouveau communicateur.

## 📄 Description


Partitionne le groupe associé au communicateur spécifié en un nombre donné de sous-groupes disjoints.

## 💡 Exemple

mpiexec([modulepath('mpi'), '/examples/help_examples/MPI_Comm_split.m'], 10)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
world_rank = MPI_Comm_rank();
world_size = MPI_Comm_size();

color = world_rank * inv(4);

% Split the communicator based on the color and use the
% original rank for ordering
row_comm = MPI_Comm_split(comm, color, world_rank);

row_rank = MPI_Comm_rank();
row_size = MPI_Comm_size();

disp(['WORLD RANK/SIZE: ',int2str(world_rank), '/', int2str(world_size), ' ROW RANK/SIZE: ', int2str(row_rank), '/', int2str(row_size)]);
if MPI_Initialized()
  MPI_Finalize();
end
```


## 🔗 Voir aussi

[MPI_Comm_rank](../mpi/MPI_Comm_rank.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
