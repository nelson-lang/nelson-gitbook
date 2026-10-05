#import "nelson_help.typ": *

= Interface de passage de messages (MPI)

Dans le domaine du calcul parallèle, le Message Passing Interface (MPI) est la norme de facto pour implémenter des programmes sur plusieurs processeurs.

 Ce module fournit des fonctions pour initialiser, gérer et finaliser des environnements MPI, ainsi que pour effectuer la communication entre processus, à la fois point à point et collective.

 Il permet aux programmes Nelson de s'exécuter efficacement sur des systèmes à mémoire distribuée et des clusters.

 Note : le support MPI n'est pas disponible sur l'architecture Windows on ARM64 (woa64).

== Functions

- #nlink(<mpi:MPI_Allreduce>)[MPI\_Allreduce]: Combine les valeurs de tous les processus et distribue le résultat à tous les processus.
- #nlink(<mpi:MPI_Barrier>)[MPI\_Barrier]: Bloque jusqu'à ce que tous les processus du communicateur atteignent cette routine.
- #nlink(<mpi:MPI_Bcast>)[MPI\_Bcast]: Diffuse un message depuis le processus "root" vers tous les autres processus du communicateur
- #nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete]: Supprime un objet MPI\_Comm.
- #nlink(<mpi:MPI_Comm_get_name>)[MPI\_Comm\_get\_name]: Renvoie le nom d'impression du communicateur.
- #nlink(<mpi:MPI_Comm_object>)[MPI\_Comm\_object]: Crée un objet MPI\_Comm.
- #nlink(<mpi:MPI_Comm_rank>)[MPI\_Comm\_rank]: Détermine le rang du processus appelant dans le communicateur.
- #nlink(<mpi:MPI_Comm_size>)[MPI\_Comm\_size]: Détermine la taille du groupe associé à un communicateur.
- #nlink(<mpi:MPI_Comm_split>)[MPI\_Comm\_split]: Partitionne le groupe associé au communicateur spécifié en un nombre donné de sous-groupes disjoints.
- #nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used]: Renvoie la liste des handles MPI\_Comm actuellement utilisés.
- #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize]: Termine l'environnement d'exécution MPI.
- #nlink(<mpi:MPI_Get_library_version>)[MPI\_Get\_library\_version]: Renvoie la version de la bibliothèque MPI.
- #nlink(<mpi:MPI_Get_processor_name>)[MPI\_Get\_processor\_name]: Récupère le nom du processeur.
- #nlink(<mpi:MPI_Get_version>)[MPI\_Get\_version]: Renvoie le numéro de version de MPI.
- #nlink(<mpi:MPI_Init>)[MPI\_Init]: Initialise l'environnement d'exécution MPI.
- #nlink(<mpi:MPI_Initialized>)[MPI\_Initialized]: Indique si MPI\_Init a été appelé.
- #nlink(<mpi:MPI_Iprobe>)[MPI\_Iprobe]: Test non-bloquant pour un message.
- #nlink(<mpi:MPI_Probe>)[MPI\_Probe]: Test bloquant pour un message.
- #nlink(<mpi:MPI_Recv>)[MPI\_Recv]: Réception bloquante d'un message.
- #nlink(<mpi:MPI_Reduce>)[MPI\_Reduce]: Réduit les valeurs de tous les processus en une seule valeur.
- #nlink(<mpi:MPI_Send>)[MPI\_Send]: Effectue un envoi bloquant.
- #nlink(<mpi:mpiexec>)[mpiexec]: Exécute un script MPI.


#nested[
#pagebreak(weak: true)
#include "MPI_Allreduce.typ"
#pagebreak(weak: true)
#include "MPI_Barrier.typ"
#pagebreak(weak: true)
#include "MPI_Bcast.typ"
#pagebreak(weak: true)
#include "MPI_Comm_delete.typ"
#pagebreak(weak: true)
#include "MPI_Comm_get_name.typ"
#pagebreak(weak: true)
#include "MPI_Comm_object.typ"
#pagebreak(weak: true)
#include "MPI_Comm_rank.typ"
#pagebreak(weak: true)
#include "MPI_Comm_size.typ"
#pagebreak(weak: true)
#include "MPI_Comm_split.typ"
#pagebreak(weak: true)
#include "MPI_Comm_used.typ"
#pagebreak(weak: true)
#include "MPI_Finalize.typ"
#pagebreak(weak: true)
#include "MPI_Get_library_version.typ"
#pagebreak(weak: true)
#include "MPI_Get_processor_name.typ"
#pagebreak(weak: true)
#include "MPI_Get_version.typ"
#pagebreak(weak: true)
#include "MPI_Init.typ"
#pagebreak(weak: true)
#include "MPI_Initialized.typ"
#pagebreak(weak: true)
#include "MPI_Iprobe.typ"
#pagebreak(weak: true)
#include "MPI_Probe.typ"
#pagebreak(weak: true)
#include "MPI_Recv.typ"
#pagebreak(weak: true)
#include "MPI_Reduce.typ"
#pagebreak(weak: true)
#include "MPI_Send.typ"
#pagebreak(weak: true)
#include "mpiexec.typ"
]
