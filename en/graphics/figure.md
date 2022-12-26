# figure

Creates an figure window.

## Syntax

- f = figure()
- f = figure(ID)
- f = figure(H)
- f = figure(propertyName, propertyValue)
- f = figure(ID, propertyName, propertyValue)
- f = figure(H, propertyName, propertyValue)

## Input argument

- ID - a scalar integer value: find or creates with ID.
- H - a scalar graphics object on an existing figure.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- f - a graphics object: figure handle.

## Description

  <p><b>figure</b> creates figure.</p>
  <p>Properties:</p>
  <p><b>Color</b>:  Background color [R, G, B] or string (example: 'blue').</p>
  <p><b>InnerPosition</b>: Location and size of drawable area (similar to 'Position').</p>
  <p><b>Name</b>: Name (default '').</p>
  <p><b>Number</b>: Figure indentifer (integer).</p>
  <p><b>OuterPosition</b>: Location and size of outer bounds (vector [X Y W H]).</p>
  <p><b>Position</b>: Location and size of drawable area.</p>
  <p><b>Tag</b>: Object identifier: string scalar, character vector, '' (default).</p>
  <p><b>Type</b>: Type 'figure'.</p>
  <p><b>UserData</b>: User data: array or [] (default).</p>
  <p><b>Visible</b>: State of visibility: 'off' or 'on' (default).</p>

## Example

```matlab
f = figure(1)
g = figure(2)
h = figure(3)
figure(g)
gcf()
figure('Name', 'Hello')
```

## See also

[gcf](gcf.md), [close](close.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
