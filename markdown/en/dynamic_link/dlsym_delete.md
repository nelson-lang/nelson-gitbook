# dlsym_delete

Removes dlsym object.

## Syntax

- dlsym_delete(h)
- delete(h)

## Input argument

- h - a handle: an dlsym object.

## Description

<p>
            <b>delete(h)</b> releases dlsym object.</p>
<p>Do not forget to clear h afterward.</p>

## Example

```matlab
dlsym_used(),delete(dlsym_used())
```

## See also

[dlsym](../dynamic_link/dlsym.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
