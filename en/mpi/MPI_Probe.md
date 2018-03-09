

# MPI_Probe

Blocking test for a message.

## Syntax

- [flag, stat, info] = MPI_Probe(rank, tag)
- [flag, stat, info] = MPI_Probe(rank, tag, comm)

## Input argument

 - rank - an integer value: source rank.
 - tag - an integer value: message tag.
 - comm - a MPI_Comm object.

## Output argument

 - flag - an integer value: 1 if the message is ready to be received, 0 if it is not.
 - stat - a struct: source rank, message tag, error, count, cancelled for the accepted message.
 - info - an integer value:  0 (MPI_SUCCESS) other value is an error.

## Description


  <p>Blocking test for a message.</p>


## See also

[MPI_IProbe](MPI_IProbe.md).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



