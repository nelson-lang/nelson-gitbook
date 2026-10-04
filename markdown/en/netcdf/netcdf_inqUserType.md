# netcdf.inqUserType

Work with netCDF user-defined variable length types.

## 📝 Syntax

- [name, size, baseType, nfields, classid] = netcdf.inqUserType(ncid, xtype)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- xtype - User-defined type identifier.
- typeName - Name of the user-defined type.
- baseType - Base netCDF datatype constant.

## 📤 Output argument

- [name, size, baseType, nfields, classid] - Return value described by the syntax shown above.

## 📄 Description

netcdf.inqUserType exposes user-defined type metadata from netCDF-4 files.

Variable length types require netCDF-4 support in the linked library.

## 💡 Example

Copy-paste example for netcdf.inqUserType.

```matlab
filename = [tempdir(), 'help_netcdf_inqUserType.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
typeid = netcdf.defVlen(ncid, 'sample_vlen', netcdf.getConstant('NC_DOUBLE'));
[name, sizeValue, baseType, nfields, classId] = netcdf.inqUserType(ncid, typeid);
netcdf.close(ncid);
```

## 🔗 See also

[netcdf.getConstant](../netcdf/netcdf.getConstant.md), [netcdf.defVar](../netcdf/netcdf.defVar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
