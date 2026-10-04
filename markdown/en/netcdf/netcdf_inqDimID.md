# netcdf.inqDimID

Work with netCDF dimensions.

## 📝 Syntax

- dimid = netcdf.inqDimID(ncid, dimname)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- dimid - Dimension identifier.
- dimname - Dimension name.
- dimlen - Dimension length or NC_UNLIMITED.

## 📤 Output argument

- dimid - Return value described by the syntax shown above.

## 📄 Description

netcdf.inqDimID exposes low-level dimension metadata.

Dimensions define the shape of variables and can be shared by several variables in the same group.

## 💡 Example

Copy-paste example for netcdf.inqDimID.

```matlab
filename = [tempdir(), 'help_netcdf_inqDimID.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
dimid = netcdf.inqDimID(ncid, 'x');
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
