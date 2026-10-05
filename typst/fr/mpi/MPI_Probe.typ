#import "nelson_help.typ": *

= MPI\_Probe <mpi:MPI_Probe>

Test bloquant pour un message.

== Syntaxe

- #raw("[flag, stat, info] = MPI_Probe(rank, tag)");
- #raw("[flag, stat, info] = MPI_Probe(rank, tag, comm)");

== Argument d'entrée

/ rank: entier : rang de la source.
/ tag: entier : étiquette (tag) du message.
/ comm: objet MPI\_Comm.

== Argument de sortie

/ flag: entier : 1 si le message est prêt à être reçu, 0 sinon.
/ stat: struct : rang source, tag du message, erreur, count, cancelled pour le message accepté.
/ info: entier : 0 (MPI\_SUCCESS), toute autre valeur indique une erreur.

== Description

Test bloquant pour vérifier la présence d'un message.


== Voir aussi

#nlink(<mpi:MPI_Iprobe>)[MPI\_IProbe];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
