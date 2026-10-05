# netcdf.inqVarIDs

Work with netCDF variables.

## 📝 Syntax

- varids = netcdf.inqVarIDs(ncid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier.
- varname - Variable name.
- xtype - netCDF datatype constant.
- dimids - Dimension identifier or vector of identifiers.
- data - Nelson array to write.

## 📤 Output argument

- varids - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqVarIDs exposes low-level variable access. 

Low-level start and count arguments use zero-based netCDF C indexing semantics.

## 💡 Example

Copy-paste example for netcdf.inqVarIDs.

```matlab
filename = [tempdir(), 'help_netcdf_inqVarIDs.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
varids = netcdf.inqVarIDs(ncid);
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
