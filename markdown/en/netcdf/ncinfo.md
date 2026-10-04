# ncinfo

Return information about a netCDF data source.

## 📝 Syntax

- info = ncinfo(filename)

## 📥 Input argument

- arguments - Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

## 📤 Output argument

- info - Return value described by the syntax shown above.

## 📄 Description

ncinfo inspects a netCDF data source and returns metadata as a Nelson structure.

The returned structure is intended for programmatic inspection and as a schema source for ncwriteschema when applicable.

## 💡 Example

Copy-paste example for ncinfo.

```matlab
filename = [tempdir(), 'help_ncinfo.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(filename);
info.Variables(1).Name
```

## 🔗 See also

[ncdisp](../netcdf/ncdisp.md), [ncwriteschema](../netcdf/ncwriteschema.md), [ncread](../netcdf/ncread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
