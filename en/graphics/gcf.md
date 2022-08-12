# gcf

Current figure handle.

## Syntax

- f = gcf()

## Output argument

- f - a graphic object: current figure handle.

## Description

  <p><b>gcf</b> returns current figure handle.</p>

## Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
```

## See also

[figure](figure.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
