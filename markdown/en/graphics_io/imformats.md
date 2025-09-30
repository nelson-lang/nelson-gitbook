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

<p>
            <b>imformats</b> returns the list of supported image formats.</p>
<p>
                <b>formats = imformats()</b> returns the list of supported image formats in a structure array.</p>
<p>
                    <b>format = imformats(ext)</b> returns the structure of the image format corresponding to the extension <b>ext</b>.</p>
<p>Each element of the structure array contains the fields:</p>
ext: file format extension isa: function handle to test if the file format is supported info: function handle to get information about the file format description: file format description read: function handle to read the file format write: function handle to write the file format alpha: logical scalar indicating if the file format supports transparency multipage: logical scalar indicating if the file format supports multipage images

## Example

```matlab
imformats()
```

## See also

[imwrite](../graphics_io/imwrite.md), [imread](../graphics_io/imread.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.13.0  | initial version |

## Author

Allan CORNET
