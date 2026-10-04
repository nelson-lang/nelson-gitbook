# netcdf.copyAtt

Work with netCDF attributes.

## 📝 Syntax

- netcdf.copyAtt(ncidIn, varidIn, attname, ncidOut, varidOut)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier, or NC_GLOBAL for a global attribute.
- attname - Attribute name.
- attvalue - Attribute value.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

netcdf.copyAtt exposes low-level attribute operations.

Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.

## 💡 Example

Copy-paste example for netcdf.copyAtt.

```matlab
filename = [tempdir(), 'help_netcdf_copyAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 2);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
netcdf.copyAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', ncid, varid);
netcdf.close(ncid);
```

## 🔗 See also

[netcdf.putVar](../netcdf/netcdf.putVar.md), [netcdf.getConstant](../netcdf/netcdf.getConstant.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
