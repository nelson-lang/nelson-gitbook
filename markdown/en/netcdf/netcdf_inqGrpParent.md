# netcdf.inqGrpParent

Work with netCDF groups.

## 📝 Syntax

- parentid = netcdf.inqGrpParent(grpid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- grpid - Group identifier.
- name - Group name.

## 📤 Output argument

- parentid - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqGrpParent exposes group operations available in netCDF-4 files. 

Groups organize dimensions, variables, and attributes into a hierarchy.

## 💡 Example

Copy-paste example for netcdf.inqGrpParent.

```matlab
filename = [tempdir(), 'help_netcdf_inqGrpParent.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
parent = netcdf.inqGrpParent(gid);
netcdf.close(ncid);
```


## 🔗 See also

[netcdf.create](../netcdf/netcdf_create.md), [netcdf.defDim](../netcdf/netcdf_defDim.md), [netcdf.defVar](../netcdf/netcdf_defVar.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
