#import "nelson_help.typ": *

= netcdf.defVarChunking <netcdf:netcdf_defVarChunking>

Configure or inspect netCDF-4 variable storage options.

== Syntax

- #raw("netcdf.defVarChunking(ncid, varid, storage, chunksizes)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier.
/ storage: NC\_CHUNKED or NC\_CONTIGUOUS.
/ chunksizes: Chunk size vector.
/ fillValue: Default value used for unwritten data.

== Output argument

/ none: This function does not return a value.

== Description

netcdf.defVarChunking controls variable storage metadata for netCDF-4 files.

 Compression, chunking, fill values, and checksums must be defined before leaving define mode.


== Example

Copy-paste example for netcdf.defVarChunking.

``````matlab
filename = [tempdir(), 'help_netcdf_defVarChunking.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
dimid = netcdf.defDim(ncid, 'x', 4);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarChunking(ncid, varid, netcdf.getConstant('NC_CHUNKED'), 2);
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
