# dlgetnelsonlibraries

Returns paths to Nelson library files.

## Syntax

- C = dlgetnelsonlibraries()

## Output argument

- C - a cell array of paths to various library directories used by Nelson modules

## Description

<p>
            <b>C = dlgetnelsonlibraries()</b> returns a cell array of paths to various library directories used by Nelson modules.</p>
<p>These paths are used internally for module development and building processes.</p>

## Example

See module skeleton for example

```matlab
dlgetnelsonlibraries()
```

## See also

[dlgetnelsonincludes](../dynamic_link/dlgetnelsonincludes.md), [dlgeneratemake](../dynamic_link/dlgeneratemake.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
