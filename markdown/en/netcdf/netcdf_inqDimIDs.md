# netcdf.inqDimIDs

Work with netCDF dimensions.

## 📝 Syntax

- dimids = netcdf.inqDimIDs(ncid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- dimid - Dimension identifier.
- dimname - Dimension name.
- dimlen - Dimension length or NC\_UNLIMITED.

## 📤 Output argument

- dimids - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqDimIDs exposes low-level dimension metadata. 

Dimensions define the shape of variables and can be shared by several variables in the same group.

## 💡 Example

Copy-paste example for netcdf.inqDimIDs.

```matlab
filename = [tempdir(), 'help_netcdf_inqDimIDs.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
dimids = netcdf.inqDimIDs(ncid);
netcdf.close(ncid);
```


## 🔗 See also

[netcdf.defVar](../netcdf/netcdf_defVar.md), [netcdf.inq](../netcdf/netcdf_inq.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
