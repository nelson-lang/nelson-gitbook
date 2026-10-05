#import "nelson_help.typ": *

= MPI\_Allreduce <mpi:MPI_Allreduce>

Combine les valeurs de tous les processus et distribue le résultat à tous les processus.

== Syntaxe

- #raw("r = MPI_Allreduce(Value, Operation, Comm)");

== Argument d'entrée

/ Value: valeur à envoyer : tableau numérique ou logique (sparse non supporté).
/ Operation: chaîne : MPI\_SUM, MPI\_MAX, MPI\_MIN, MPI\_PROD, MPI\_LAND, MPI\_LOR, MPI\_BAND, MPI\_BOR, MPI\_LXOR ou MPI\_BXOR
/ Comm: a MPI\_Comm object.

== Argument de sortie

/ r: valeur reçue

== Description

Combine les valeurs de tous les processus et distribue le résultat à tous les processus.

 Nelson ne vérifie pas que les tableaux fournis aux opérations de réduction sont de la même taille sur tous les processus du groupe.

 Assurez-vous que chaque processus passe un tableau de la même taille à MPI\_Allreduce.


== Exemple

mpiexec(\[modulepath('mpi'), '\/examples\/help\_examples\/MPI\_Allreduce.m'\], 4)

``````matlab

if ~MPI_Initialized()
  MPI_Init();
end
comm = MPI_Comm_object();
my_rank = MPI_Comm_rank ();
num_ranks = MPI_Comm_size();

A = [1 + my_rank:3 + my_rank]
B = MPI_Allreduce(A, 'MPI_PROD', comm);
if (my_rank == 0)
  disp('Result:')
  disp(B);
end
if MPI_Initialized()
  MPI_Finalize();
end

``````


== Voir aussi

#nlink(<mpi:MPI_Reduce>)[MPI\_Reduce];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
