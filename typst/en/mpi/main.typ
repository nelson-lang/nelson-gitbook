#import "nelson_help.typ": *

= Message Passing Interface

In the world of parallel computing, the Message Passing Interface (MPI) is the de facto standard for implementing programs on multiple processors.

 This module provides functions to initialize, manage, and finalize MPI environments, as well as to perform communication between processes, both point-to-point and collective.

 It enables Nelson programs to run efficiently on distributed-memory systems and clusters.

 Note: MPI support is not available on Windows on ARM64 (woa64) architecture.

== Functions

- #nlink(<mpi:MPI_Allreduce>)[MPI\_Allreduce]: Combines values from all processes and distributes the result back to all processes.
- #nlink(<mpi:MPI_Barrier>)[MPI\_Barrier]: Blocks until all processes in the communicator have reached this routine.
- #nlink(<mpi:MPI_Bcast>)[MPI\_Bcast]: Broadcasts a message from the process with rank "root" to all other processes of the communicator
- #nlink(<mpi:MPI_Comm_delete>)[MPI\_Comm\_delete]: Removes MPI\_Comm object.
- #nlink(<mpi:MPI_Comm_get_name>)[MPI\_Comm\_get\_name]: Return the print name from the communicator.
- #nlink(<mpi:MPI_Comm_object>)[MPI\_Comm\_object]: Creates MPI\_Comm object.
- #nlink(<mpi:MPI_Comm_rank>)[MPI\_Comm\_rank]: Determines the rank of the calling process in the communicator.
- #nlink(<mpi:MPI_Comm_size>)[MPI\_Comm\_size]: Determines the size of the group associated with a communicator.
- #nlink(<mpi:MPI_Comm_split>)[MPI\_Comm\_split]: Partitions the group that is associated with the specified communicator into a specified number of disjoint subgroups.
- #nlink(<mpi:MPI_Comm_used>)[MPI\_Comm\_used]: Returns the current valid MPI\_Comm handles.
- #nlink(<mpi:MPI_Finalize>)[MPI\_Finalize]: Terminate the MPI execution environment.
- #nlink(<mpi:MPI_Get_library_version>)[MPI\_Get\_library\_version]: Return the version number of MPI library.
- #nlink(<mpi:MPI_Get_processor_name>)[MPI\_Get\_processor\_name]: Gets the name of the processor.
- #nlink(<mpi:MPI_Get_version>)[MPI\_Get\_version]: Return the version number of MPI.
- #nlink(<mpi:MPI_Init>)[MPI\_Init]: Initialize the MPI execution environment.
- #nlink(<mpi:MPI_Initialized>)[MPI\_Initialized]: Indicates whether MPI\_Init has been called.
- #nlink(<mpi:MPI_Iprobe>)[MPI\_Iprobe]: Nonblocking test for a message.
- #nlink(<mpi:MPI_Probe>)[MPI\_Probe]: Blocking test for a message.
- #nlink(<mpi:MPI_Recv>)[MPI\_Recv]: Blocking receive for a message.
- #nlink(<mpi:MPI_Reduce>)[MPI\_Reduce]: Reduces values on all processes to a single value.
- #nlink(<mpi:MPI_Send>)[MPI\_Send]: Performs a blocking send.
- #nlink(<mpi:mpiexec>)[mpiexec]: Run an MPI script.


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
