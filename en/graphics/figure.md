# figure

Creates an figure window.

## Syntax

- f = figure()
- f = figure(ID)
- f = figure(H)

## Input argument

- ID - a scalar integer value: find or creates with ID.
- H - a scalar graphic object on an existing figure.

## Output argument

- f - a graphic object: figure handle.

## Description

  <p><b>figure</b> creates figure.</p>
  <p>Properties:</p>
  <p><b>Color</b>:  Background color [R, G, B] or string (example: 'blue').</p>
  <p><b>InnerPosition</b>: Location and size of drawable area (similar to 'Position').</p>
  <p><b>Name</b>: Name (default '').</p>
  <p><b>Number</b>: Figure indentifer (integer).</p>
  <p><b>OuterPosition</b>: Location and size of outer bounds (vector [X Y W H]).</p>
  <p><b>Position</b>: Location and size of drawable area.</p>
  <p><b>Tag</b>: String identifier.</p>
  <p><b>Type</b>: Type 'figure'.</p>
  <p><b>UserData</b>: User data (any array type).</p>
  <p><b>Visible</b>: </p>

## Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
```

## See also

[gcf](gcf.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
