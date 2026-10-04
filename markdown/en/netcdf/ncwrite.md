# ncwrite

Write data to a variable in a netCDF file.

## 📝 Syntax

- ncwrite(filename, varname, data)
- ncwrite(filename, varname, data, start)
- ncwrite(filename, varname, data, start, stride)

## 📥 Input argument

- filename - Path of the netCDF file.
- varname - Name of the variable to update.
- data - Nelson array written to the variable.
- start - Optional one-based starting subscript.
- stride - Optional positive stride vector.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

ncwrite writes an entire variable or a hyperslab of a variable. High-level indexing uses one-based subscripts.

The data type is converted by the netCDF C library when the conversion is valid.

## 💡 Example

Copy-paste example for ncwrite.

```matlab
filename = [tempdir(), 'help_ncwrite.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
ncwrite(filename, 'temperature', [10 20 30]);
data = ncread(filename, 'temperature')
```

## 🔗 See also

[nccreate](../netcdf/nccreate.md), [ncread](../netcdf/ncread.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
