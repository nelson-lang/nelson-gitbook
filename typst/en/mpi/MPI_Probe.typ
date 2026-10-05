#import "nelson_help.typ": *

= MPI\_Probe <mpi:MPI_Probe>

Blocking test for a message.

== Syntax

- #raw("[flag, stat, info] = MPI_Probe(rank, tag)");
- #raw("[flag, stat, info] = MPI_Probe(rank, tag, comm)");

== Input argument

/ rank: an integer value: source rank.
/ tag: an integer value: message tag.
/ comm: a MPI\_Comm object.

== Output argument

/ flag: an integer value: 1 if the message is ready to be received, 0 if it is not.
/ stat: a struct: source rank, message tag, error, count, cancelled for the accepted message.
/ info: an integer value: 0 (MPI\_SUCCESS) other value is an error.

== Description

Blocking test for a message.


== See also

#nlink(<mpi:MPI_Iprobe>)[MPI\_IProbe];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
