# dlgetnelsonincludes

Returns paths of Nelson include directories.

## Syntax

- C = dlgetnelsonincludes()

## Output argument

- C - a cell array of paths to various include directories used by Nelson modules

## Description

<p>
            <b>C = dlgetnelsonincludes()</b> returns a cell array of paths to various include directories used by Nelson modules.</p>
<p>These paths are used internally for module development and building processes.</p>

## Example

See module skeleton for example

```matlab
dlgetnelsonincludes()
```

## See also

[dlgetnelsonlibraries](../dynamic_link/dlgetnelsonlibraries.md), [dlgeneratemake](../dynamic_link/dlgeneratemake.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.10.0  | initial version |

## Author

Allan CORNET
