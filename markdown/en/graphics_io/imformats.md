# imformats

Manage supported image formats.

## 📝 Syntax

- imformats ()
- formats = imformats()
- format = imformats(ext)

## 📥 Input argument

- ext - File format extension: character vector or string scalar.

## 📤 Output argument

- formats - structure array: supported image formats.
- format - structure: supported image format.

## 📄 Description

<b>imformats</b> returns the list of supported image formats.

<b>formats = imformats()</b> returns the list of supported image formats in a structure array.

<b>format = imformats(ext)</b> returns the structure of the image format corresponding to the extension <b>ext</b>.

Each element of the structure array contains the fields:

- <b>ext</b>: file format extension
- <b>isa</b>: function handle to test if the file format is supported
- <b>info</b>: function handle to get information about the file format
- <b>description</b>: file format description
- <b>read</b>: function handle to read the file format
- <b>write</b>: function handle to write the file format
- <b>alpha</b>: logical scalar indicating if the file format supports transparency
- <b>multipage</b>: logical scalar indicating if the file format supports multipage images

## 💡 Example

```matlab
imformats()
```

## 🔗 See also

[imwrite](../graphics_io/imwrite.md), [imread](../graphics_io/imread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.13.0  | initial version |

## 👤 Author

Allan CORNET
