# netcdf.defVarDeflate

Configure or inspect netCDF-4 variable storage options.

## 📝 Syntax

- netcdf.defVarDeflate(ncid, varid, shuffle, deflate, deflateLevel)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier.
- storage - NC\_CHUNKED or NC\_CONTIGUOUS.
- chunksizes - Chunk size vector.
- fillValue - Default value used for unwritten data.

## 📤 Output argument

- none - This function does not return a value.

## 📄 Description


netcdf.defVarDeflate controls variable storage metadata for netCDF-4 files. 

Compression, chunking, fill values, and checksums must be defined before leaving define mode.

## 💡 Example

Copy-paste example for netcdf.defVarDeflate.

```matlab
filename = [tempdir(), 'help_netcdf_defVarDeflate.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 4);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarDeflate(ncid, varid, 1, 1, 1);
netcdf.close(ncid);
```


## 🔗 See also

[netcdf.defVar](../netcdf/netcdf_defVar.md), [netcdf.endDef](../netcdf/netcdf_endDef.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
