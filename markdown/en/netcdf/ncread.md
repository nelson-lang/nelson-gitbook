# ncread

Read data from a variable in a netCDF file.

## 📝 Syntax

- data = ncread(filename, varname)
- data = ncread(filename, varname, start, count)
- data = ncread(filename, varname, start, count, stride)

## 📥 Input argument

- filename - Path of the netCDF data source.
- varname - Variable name to read.
- start - Optional one-based start vector.
- count - Optional number of elements to read.
- stride - Optional positive stride vector.

## 📤 Output argument

- data - Return value described by the syntax shown above.

## 📄 Description

ncread returns variable data as a Nelson array. Primitive netCDF numeric types are mapped to Nelson numeric classes where possible.

High-level start values are one-based, matching regular Nelson indexing.

## 💡 Example

Copy-paste example for ncread.

```matlab
filename = [tempdir(), 'help_ncread.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 4});
ncwrite(filename, 'temperature', [10 20 30 40]);
data = ncread(filename, 'temperature', 2, 2)
```

## 🔗 See also

[nccreate](../netcdf/nccreate.md), [ncwrite](../netcdf/ncwrite.md), [ncinfo](../netcdf/ncinfo.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
