# ncwriteschema

Add schema definitions to a netCDF file.

## 📝 Syntax

- ncwriteschema(filename, schema)

## 📥 Input argument

- filename - Path of the netCDF file to create or update.
- schema - Structure describing dimensions, variables, groups, and attributes. The structure can follow the shape returned by ncinfo where applicable.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description


ncwriteschema creates definitions from a schema structure. 

Use it to reproduce metadata layout before writing variable data.

## 💡 Example

Copy-paste example for ncwriteschema.

```matlab
source = [tempdir(), 'help_ncwriteschema_source.nc'];
target = [tempdir(), 'help_ncwriteschema_target.nc'];
nccreate(source, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(source);
ncwriteschema(target, info);
copyInfo = ncinfo(target);
copyInfo.Variables(1).Name
```


## 🔗 See also

[ncinfo](../netcdf/ncinfo.md), [nccreate](../netcdf/nccreate.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
