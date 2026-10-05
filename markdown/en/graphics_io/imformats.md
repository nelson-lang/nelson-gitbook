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
- <b>isa</b>: reserved field; empty because signature detection is centralized 
- <b>info</b>: reserved field; empty because capabilities are stored in this structure 
- <b>description</b>: file format description 
- <b>read</b>: <b>imread</b> capability, or empty for an unreadable format 
- <b>write</b>: <b>imwrite</b> capability, or empty for a read-only format 
- <b>alpha</b>: logical scalar indicating if the file format supports transparency 
- <b>multipage</b>: logical scalar indicating exposed multi-image writing; only GIF is true 

The registry is deterministic and does not depend on desktop image plugins. An empty <b>read</b> or <b>write</b> field means that the operation is not supported. In the array returned without an argument, these fields contain the function name; a single-format query returns the equivalent function handle. 

| Canonical extension | Aliases | Read | Write | Alpha | Multipage | 
| --- | --- | --- | --- | --- | --- | 
| png | - | yes | yes | yes | no | 
| jpg | jpeg, jfif | yes | yes | no | no | 
| gif | - | yes | yes | yes | yes | 
| webp | - | yes | yes | yes | no | 
| tiff | tif | yes | yes | yes | no | 
| bmp | dib | yes | yes | yes | no | 
| tga | - | yes | yes | yes | no | 
| pbm | - | yes | yes | no | no | 
| pgm | - | yes | yes | no | no | 
| ppm | - | yes | yes | no | no | 
| pnm | - | yes | yes | no | no | 
| pcx | - | yes | yes | no | no | 
| psd | - | yes | no | yes | no | 
| hdr | rgbe | yes | no | no | no | 
| pic | - | yes | no | yes | no | 



## 💡 Examples



```matlab
imformats()
```
Query a format by an alias.

```matlab
imformats('jpeg')
imformats('webp')
```
Filter readable and writable formats.

```matlab
formats = imformats();
readable = {};
writable = {};
for k = 1:length(formats)
    if ~isempty(formats(k).read), readable{end + 1} = formats(k).ext; end
    if ~isempty(formats(k).write), writable{end + 1} = formats(k).ext; end
end
readable
writable
```


## 🔗 See also

[imwrite](../graphics_io/imwrite.md), [imread](../graphics_io/imread.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.13.0   | initial version |
| 2.0.0   | deterministic cross-platform format registry |

<!--
## 👤 Author

Allan CORNET
-->
