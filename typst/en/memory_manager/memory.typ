#import "nelson_help.typ": *

= memory <memory_manager:memory>

Get memory information.

== Syntax

- #raw("memory");
- #raw("usermem = memory()");
- #raw("[usermem, systemmem] = memory()");

== Output argument

/ usermem: Get information about user memory (an struct).
/ systemmem: Get information about system memory (an struct)

== Description

#strong[memory]; get memory information.

 #strong[User Memory];: returns Maximum Possible Array (MaxPossibleArrayBytes), Memory Available for All Arrays (MemAvailableAllArrays), Memory Used By Nelson (MemUsedNelson).

 #strong[System Memory];:

 VirtualAddressSpace.Available: available swap file space

 VirtualAddressSpace.Total: total swap file space

 SystemMemory.Available: available system memory

 PhysicalMemory.Available: available physical memory

 PhysicalMemory.Total: total physical memory


== Examples

``````matlab
memory()
A = ones(1000);
memory()
``````

``````matlab
clear('A');
[u1, s1] = memory();
A = ones(1000);
[u2, s2] = memory();
disp(u2.MemUsedNelson - u1.MemUsedNelson);
clear('A');
[u3, s3] = memory();
disp(u3.MemUsedNelson - u2.MemUsedNelson);
``````

``````matlab
[u1, s1] = memory()
``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
