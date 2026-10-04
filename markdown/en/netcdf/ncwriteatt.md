# ncwriteatt

Write an attribute to a netCDF file or variable.

## 📝 Syntax

- ncwriteatt(filename, location, attname, attvalue)

## 📥 Input argument

- filename - Path of the netCDF file.
- location - Variable name, or '/' for a global attribute.
- attname - Attribute name.
- attvalue - Attribute value. Character and numeric arrays are supported.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

ncwriteatt writes metadata as a netCDF attribute. Use location '/' for global file metadata.

Attributes are useful for units, titles, scale factors, and provenance metadata.

## 💡 Example

Copy-paste example for ncwriteatt.

```matlab
filename = [tempdir(), 'help_ncwriteatt.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 2});
ncwriteatt(filename, '/', 'title', 'sample file');
title = ncreadatt(filename, '/', 'title')
```

## 🔗 See also

[ncreadatt](../netcdf/ncreadatt.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
