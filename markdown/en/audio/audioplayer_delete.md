# audioplayer_delete

Removes audioplayer object.

## Syntax

- audioplayer_delete(h)
- delete(h)

## Input argument

- h - a handle: an audioplayer object.

## Description

  <p><b>delete(h)</b> releases audioplayer object.</p>
  <p>Do not forget to clear h afterward.</p>

## Example

```matlab
audioplayer_used(),delete(audioplayer_used())
```

## See also

[audioplayer](audioplayer.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
