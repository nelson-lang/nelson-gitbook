# libpointer_used

Returns list of current used libpointer handle.

## Syntax

- r = libpointer_used()

## Output argument

- h - a vector of libpointer handle.

## Description

<p>Returns list of current used libpointer handle.</p>

## Example

```matlab
libpointer_used(),delete(libpointer_used())
```

## See also

[dlcall](../dynamic_link/dlcall.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
