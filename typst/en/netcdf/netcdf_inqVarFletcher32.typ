#import "nelson_help.typ": *

= netcdf.inqVarFletcher32 <netcdf:netcdf_inqVarFletcher32>

Configure or inspect netCDF-4 variable storage options.

== Syntax

- #raw("fletcher32Flag = netcdf.inqVarFletcher32(ncid, varid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier.
/ storage: NC\_CHUNKED or NC\_CONTIGUOUS.
/ chunksizes: Chunk size vector.
/ fillValue: Default value used for unwritten data.

== Output argument

/ fletcher32Flag: Return value described by the syntax shown above.

== Description

netcdf.inqVarFletcher32 controls variable storage metadata for netCDF-4 files.

 Compression, chunking, fill values, and checksums must be defined before leaving define mode.


== Example

Copy-paste example for netcdf.inqVarFletcher32.

``````matlab
filename = [tempdir(), 'help_netcdf_inqVarFletcher32.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFletcher32(ncid, varid, 1);
checksum = netcdf.inqVarFletcher32(ncid, varid);
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];, #nlink(<netcdf:netcdf_endDef>)[netcdf.endDef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
