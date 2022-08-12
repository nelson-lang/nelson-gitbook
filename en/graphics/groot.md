# groot

graphic root object.

## Syntax

- g = groot()

## Output argument

- g - a graphic object: root object.

## Description

  <p><b>groot</b> returns graphic root object.</p>
  <p>Properties:</p>
  <p><b>Children</b>: Array of available figure objects.</p>
  <p><b>CurrentFigure</b>: Current figure graphic object.</p>
  <p><b>Parent</b>: empty array (No parent)</p>
  <p><b>PointerLocation</b>: Current location of pointer.</p>
  <p><b>ScreenDepth</b>: Number of bits that define each pixel color.</p>
  <p><b>ScreenSize</b>: Size of primary display (vector).</p>
  <p><b>Tag</b>: String identifier.</p>
  <p><b>Type</b>: Type 'root'.</p>
  <p><b>UserData</b>: User data (any array type).</p>

## Example

```matlab
g = groot()
g.ScreenDepth
```

## See also

[figure](figure.html), [gcf](gcf.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
