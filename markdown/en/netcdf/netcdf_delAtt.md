# netcdf.delAtt

Work with netCDF attributes.

## 📝 Syntax

- netcdf.delAtt(ncid, varid, attname)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier, or NC_GLOBAL for a global attribute.
- attname - Attribute name.
- attvalue - Attribute value.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

netcdf.delAtt exposes low-level attribute operations.

Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.

## 💡 Example

Copy-paste example for netcdf.delAtt.

```matlab
filename = [tempdir(), 'help_netcdf_delAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
netcdf.delAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
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
