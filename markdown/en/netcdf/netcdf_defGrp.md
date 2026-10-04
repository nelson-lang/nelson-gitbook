# netcdf.defGrp

Work with netCDF groups.

## 📝 Syntax

- grpid = netcdf.defGrp(ncid, name)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- grpid - Group identifier.
- name - Group name.

## 📤 Output argument

- grpid - Return value described by the syntax shown above.

## 📄 Description

netcdf.defGrp exposes group operations available in netCDF-4 files.

Groups organize dimensions, variables, and attributes into a hierarchy.

## 💡 Example

Copy-paste example for netcdf.defGrp.

```matlab
filename = [tempdir(), 'help_netcdf_defGrp.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
netcdf.close(ncid);
```

## 🔗 See also

[netcdf.create](../netcdf/netcdf.create.md), [netcdf.defDim](../netcdf/netcdf.defDim.md), [netcdf.defVar](../netcdf/netcdf.defVar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
