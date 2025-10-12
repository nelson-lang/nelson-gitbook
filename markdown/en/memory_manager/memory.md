# memory

Get memory information.

## Syntax

- memory
- usermem = memory()
- [usermem, systemmem] = memory()

## Output argument

- usermem - Get information about user memory (an struct).
- systemmem - Get information about system memory (an struct)

## Description

<p>
            memory get memory information.</p>

<p>
                User Memory: returns Maximum Possible Array (MaxPossibleArrayBytes), Memory Available for All Arrays (MemAvailableAllArrays), Memory Used By Nelson (MemUsedNelson).</p>

<p>
                    System Memory:</p>

<p>VirtualAddressSpace.Available: available swap file space</p>

<p>VirtualAddressSpace.Total: total swap file space</p>

<p>SystemMemory.Available: available system memory</p>

<p>PhysicalMemory.Available: available physical memory</p>

<p>PhysicalMemory.Total: total physical memory</p>

## Examples

```matlab
memory()
A = ones(1000);
memory()
```

```matlab
clear('A');
[u1, s1] = memory();
A = ones(1000);
[u2, s2] = memory();
disp(u2.MemUsedNelson - u1.MemUsedNelson);
clear('A');
[u3, s3] = memory();
disp(u3.MemUsedNelson - u2.MemUsedNelson);
```

```matlab
[u1, s1] = memory()
```

## See also

[clear](../memory_manager/clear.md), [who](../memory_manager/who.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
