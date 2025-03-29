# imformats

Manage supported image formats.

## Syntax

- imformats ()
- formats = imformats()
- format = imformats(ext)

## Input argument

- ext - File format extension: character vector or string scalar.

## Output argument

- formats - structure array: supported image formats.
- format - structure: supported image format.

## Description

  <p><b>imformats</b> returns the list of supported image formats.</p>
  <p><b>formats = imformats()</b> returns the list of supported image formats in a structure array.</p>
  <p><b>format = imformats(ext)</b> returns the structure of the image format corresponding to the extension <b>ext</b>.</p>
  <p>Each element of the structure array contains the fields:</p>
  <ul>
    <li><b>ext</b>: file format extension</li>
    <li><b>isa</b>: function handle to test if the file format is supported</li>
    <li><b>info</b>: function handle to get information about the file format</li>
    <li><b>description</b>: file format description</li>
    <li><b>read</b>: function handle to read the file format</li>
    <li><b>write</b>: function handle to write the file format</li>
    <li><b>alpha</b>: logical scalar indicating if the file format supports transparency</li>
    <li><b>multipage</b>: logical scalar indicating if the file format supports multipage images</li>
  </ul>

## Example

```matlab
imformats()
```

## See also

[imwrite](imwrite.md), [imread](imread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.13.0  | initial version |

## Author

Allan CORNET
