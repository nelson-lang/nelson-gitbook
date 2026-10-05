# netcdf.putVar

Work with netCDF variables.

## 📝 Syntax

- netcdf.putVar(ncid, varid, data)
- netcdf.putVar(ncid, varid, start, count, stride, data)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier.
- varname - Variable name.
- xtype - netCDF datatype constant.
- dimids - Dimension identifier or vector of identifiers.
- data - Nelson array to write.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description


netcdf.putVar exposes low-level variable access. 

Low-level start and count arguments use zero-based netCDF C indexing semantics.

## 💡 Example

Copy-paste example for netcdf.putVar.

```matlab
filename = [tempdir(), 'help_netcdf_putVar.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.endDef(ncid);
netcdf.putVar(ncid, varid, [1 2 3]);
netcdf.close(ncid);
```


## 🔗 See also

[netcdf.defDim](../netcdf/netcdf_defDim.md), [netcdf.putAtt](../netcdf/netcdf_putAtt.md), [netcdf.getConstant](../netcdf/netcdf_getConstant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
