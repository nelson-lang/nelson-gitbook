# netcdf.inqGrpName

Work with netCDF groups.

## 📝 Syntax

- name = netcdf.inqGrpName(grpid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- grpid - Group identifier.
- name - Group name.

## 📤 Output argument

- name - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqGrpName exposes group operations available in netCDF-4 files. 

Groups organize dimensions, variables, and attributes into a hierarchy.

## 💡 Example

Copy-paste example for netcdf.inqGrpName.

```matlab
filename = [tempdir(), 'help_netcdf_inqGrpName.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
name = netcdf.inqGrpName(gid);
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
