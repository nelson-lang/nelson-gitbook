# MPI_Comm_size

Determines the size of the group associated with a communicator.

## 📝 Syntaxe

- r = MPI_Comm_size(Comm)

## 📥 Argument d'entrée

- Comm - a MPI_Comm object.

## 📤 Argument de sortie

- r - an integer value: number of processes in the group of Comm.

## 📄 Description

Determines the size of the group associated with a communicator.

## 💡 Exemple

mpiexec([modulepath('mpi'), '/examples/MPI_helloworld.m'], 4)

```matlab
if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object()
my_rank = MPI_Comm_rank (comm)
num_ranks = MPI_Comm_size(comm)

TAG= 1;
if (my_rank != 0)
  rankvect = 0;
  MPI_Send(rand(3,3) + my_rank, rankvect, TAG, comm);
else
  disp('MPI master receive:')
  for source = 1:num_ranks - 1
    disp(['From slave ', int2str(source)])
    message = MPI_Recv (source, TAG, comm);
    disp(message)
  end
end

if MPI_Initialized()
  MPI_Finalize();
end

```

## 🔗 Voir aussi

[MPI_Comm_rank](../mpi/MPI_Comm_rank.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
