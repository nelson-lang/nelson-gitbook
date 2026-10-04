# netcdf.renameDim

Work with netCDF dimensions.

## 📝 Syntax

- netcdf.renameDim(ncid, dimid, newname)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- dimid - Dimension identifier.
- dimname - Dimension name.
- dimlen - Dimension length or NC_UNLIMITED.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description

netcdf.renameDim exposes low-level dimension metadata.

Dimensions define the shape of variables and can be shared by several variables in the same group.

## 💡 Example

Copy-paste example for netcdf.renameDim.

```matlab
filename = [tempdir(), 'help_netcdf_renameDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.renameDim(ncid, dimid, 'samples');
netcdf.close(ncid);
```

## 🔗 See also

[netcdf.defVar](../netcdf/netcdf.defVar.md), [netcdf.inq](../netcdf/netcdf.inq.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
