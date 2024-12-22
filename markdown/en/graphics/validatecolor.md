# validatecolor

Validate color values.

## Syntax

- RGB = validatecolor(colors)
- RGB = validatecolor(colors, sz)

## Input argument

- colors - 1-by-3 vector, m-by-3 matrix, character vector, cell array of character vectors or string array.
- sz - 'one' (default) or 'multiple'

## Output argument

- RGB - RGB values: RGB triplet or matrix of RGB triplets.

## Description

  <p>The <b>validatecolor</b> function is a color validation function that checks whether a given color is valid according to Nelson standards.</p>
  <p>It takes a color argument as input and returns an error if the color is not valid.</p>

## Example

```matlab
RGB = validatecolor('red')
RGB = validatecolor('purple')
RGB = validatecolor({'#8000FF','#00FF00','#FF9900'}, 'multiple')
RGB = validatecolor({'red','green','blue'},'multiple')
```

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
