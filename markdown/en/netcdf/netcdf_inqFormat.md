# netcdf.inqFormat

Determine the format of an open netCDF file.

## 📝 Syntax

- format = netcdf.inqFormat(ncid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- filename - Path of the file when used by create or open.
- mode - Numeric mode built from netCDF constants when required.

## 📤 Output argument

- format - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqFormat is a low-level wrapper around the corresponding netCDF C library operation. 

Low-level functions use numeric identifiers returned by netcdf.create, netcdf.open, and related calls.

## 💡 Example

Copy-paste example for netcdf.inqFormat.

```matlab
filename = [tempdir(), 'help_netcdf_inqFormat.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.close(ncid);
ncid = netcdf.open(filename, netcdf.getConstant('NC_NOWRITE'));
format = netcdf.inqFormat(ncid);
netcdf.close(ncid);
```


## 🔗 See also

[netcdf.create](../netcdf/netcdf_create.md), [netcdf.open](../netcdf/netcdf_open.md), [netcdf.close](../netcdf/netcdf_close.md), [netcdf.getConstant](../netcdf/netcdf_getConstant.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
