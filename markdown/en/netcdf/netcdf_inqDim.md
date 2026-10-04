# netcdf.inqDim

Work with netCDF dimensions.

## 📝 Syntax

- [dimname, dimlen] = netcdf.inqDim(ncid, dimid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- dimid - Dimension identifier.
- dimname - Dimension name.
- dimlen - Dimension length or NC_UNLIMITED.

## 📤 Output argument

- [dimname, dimlen] - Return value described by the syntax shown above.

## 📄 Description

netcdf.inqDim exposes low-level dimension metadata.

Dimensions define the shape of variables and can be shared by several variables in the same group.

## 💡 Example

Copy-paste example for netcdf.inqDim.

```matlab
filename = [tempdir(), 'help_netcdf_inqDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
[name, len] = netcdf.inqDim(ncid, dimid);
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
