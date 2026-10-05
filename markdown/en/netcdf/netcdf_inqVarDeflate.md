# netcdf.inqVarDeflate

Configure or inspect netCDF-4 variable storage options.

## 📝 Syntax

- [shuffle, deflate, deflateLevel] = netcdf.inqVarDeflate(ncid, varid)

## 📥 Input argument

- ncid - Open netCDF file or group identifier.
- varid - Variable identifier.
- storage - NC\_CHUNKED or NC\_CONTIGUOUS.
- chunksizes - Chunk size vector.
- fillValue - Default value used for unwritten data.

## 📤 Output argument

- [shuffle, deflate, deflateLevel] - Return value described by the syntax shown above.

## 📄 Description


netcdf.inqVarDeflate controls variable storage metadata for netCDF-4 files. 

Compression, chunking, fill values, and checksums must be defined before leaving define mode.

## 💡 Example

Copy-paste example for netcdf.inqVarDeflate.

```matlab
filename = [tempdir(), 'help_netcdf_inqVarDeflate.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 4);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarDeflate(ncid, varid, 1, 1, 1);
[shuffle, deflate, level] = netcdf.inqVarDeflate(ncid, varid);
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
