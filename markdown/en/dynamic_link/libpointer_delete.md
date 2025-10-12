# libpointer_delete

Removes libpointer object.

## Syntax

- libpointer_delete(h)
- delete(h)

## Input argument

- h - a handle: an libpointer object.

## Description

<p>
            delete(h) releases libpointer object.</p>

<p>Do not forget to clear h afterward.</p>

## Example

```matlab
libpointer_used(),delete(libpointer_used())
```

## See also

[libpointer](../dynamic_link/libpointer.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
