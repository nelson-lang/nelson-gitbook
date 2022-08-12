# exit

Exit from current Nelson application

## Syntax

- exit
- exit(status)

## Output argument

- status - an optional integer value passed to the operating system as Nelson’s exit status code.

## Description

  <p><b>exit</b> terminates the current session of Nelson.</p>
  <p>The default value is zero.</p>

## Example

Beware this example will close Nelson

```matlab
exit(33)
```

## See also

[quit](quit.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
