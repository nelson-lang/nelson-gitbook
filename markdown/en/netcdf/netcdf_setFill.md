# netcdf.setFill

Set netCDF fill mode.

## 📝 Syntax

- oldMode = netcdf.setFill(ncid, fillmode)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- filename - Path of the file when used by create or open.
- mode - Numeric mode built from netCDF constants when required.

## 📤 Output argument

- oldMode - Return value described by the syntax shown above.

## 📄 Description

netcdf.setFill is a low-level wrapper around the corresponding netCDF C library operation.

Low-level functions use numeric identifiers returned by netcdf.create, netcdf.open, and related calls.

## 💡 Example

Copy-paste example for netcdf.setFill.

```matlab
filename = [tempdir(), 'help_netcdf_setFill.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
oldFill = netcdf.setFill(ncid, netcdf.getConstant('NC_NOFILL'));
netcdf.close(ncid);
```

## 🔗 See also

[netcdf.create](../netcdf/netcdf.create.md), [netcdf.open](../netcdf/netcdf.open.md), [netcdf.close](../netcdf/netcdf.close.md), [netcdf.getConstant](../netcdf/netcdf.getConstant.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
