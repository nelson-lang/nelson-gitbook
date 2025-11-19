# Interface de passage de messages (MPI)

Dans le domaine du calcul parallèle, le Message Passing Interface (MPI) est la norme de facto pour implémenter des programmes sur plusieurs processeurs.

Ce module fournit des fonctions pour initialiser, gérer et finaliser des environnements MPI, ainsi que pour effectuer la communication entre processus, à la fois point à point et collective.

Il permet aux programmes Nelson de s'exécuter efficacement sur des systèmes à mémoire distribuée et des clusters.

## Functions

- [MPI_Allreduce](MPI_Allreduce.md) - Combine les valeurs de tous les processus et distribue le résultat à tous les processus.
- [MPI_Barrier](MPI_Barrier.md) - Bloque jusqu'à ce que tous les processus du communicateur atteignent cette routine.
- [MPI_Bcast](MPI_Bcast.md) - Diffuse un message depuis le processus "root" vers tous les autres processus du communicateur
- [MPI_Comm_delete](MPI_Comm_delete.md) - Supprime un objet MPI_Comm.
- [MPI_Comm_get_name](MPI_Comm_get_name.md) - Renvoie le nom d'impression du communicateur.
- [MPI_Comm_object](MPI_Comm_object.md) - Creates MPI_Comm object.
- [MPI_Comm_rank](MPI_Comm_rank.md) - Determines the rank of the calling process in the communicator.
- [MPI_Comm_size](MPI_Comm_size.md) - Determines the size of the group associated with a communicator.
- [MPI_Comm_split](MPI_Comm_split.md) - Partitionne le groupe associé au communicateur spécifié en un nombre donné de sous-groupes disjoints.
- [MPI_Comm_used](MPI_Comm_used.md) - Renvoie la liste des handles MPI_Comm actuellement utilisés.
- [MPI_Finalize](MPI_Finalize.md) - Termine l'environnement d'exécution MPI.
- [MPI_Get_library_version](MPI_Get_library_version.md) - Renvoie la version de la bibliothèque MPI.
- [MPI_Get_processor_name](MPI_Get_processor_name.md) - Récupère le nom du processeur.
- [MPI_Get_version](MPI_Get_version.md) - Renvoie le numéro de version de MPI.
- [MPI_Init](MPI_Init.md) - Initialise l'environnement d'exécution MPI.
- [MPI_Initialized](MPI_Initialized.md) - Indique si MPI_Init a été appelé.
- [MPI_Iprobe](MPI_Iprobe.md) - Test non-bloquant pour un message.
- [MPI_Probe](MPI_Probe.md) - Test bloquant pour un message.
- [MPI_Recv](MPI_Recv.md) - Réception bloquante d'un message.
- [MPI_Reduce](MPI_Reduce.md) - Réduit les valeurs de tous les processus en une seule valeur.
- [MPI_Send](MPI_Send.md) - Effectue un envoi bloquant.
- [mpiexec](mpiexec.md) - Run an MPI script.
