#import "nelson_help.typ": *

= netcdf.defVarFill <netcdf:netcdf_defVarFill>

Configure or inspect netCDF-4 variable storage options.

== Syntax

- #raw("netcdf.defVarFill(ncid, varid, noFillMode, fillValue)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier.
/ storage: NC\_CHUNKED or NC\_CONTIGUOUS.
/ chunksizes: Chunk size vector.
/ fillValue: Default value used for unwritten data.

== Output argument

/ none: This function does not return a value.

== Description

netcdf.defVarFill controls variable storage metadata for netCDF-4 files.

 Compression, chunking, fill values, and checksums must be defined before leaving define mode.


== Example

Copy-paste example for netcdf.defVarFill.

``````matlab
filename = [tempdir(), 'help_netcdf_defVarFill.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFill(ncid, varid, 0, -999);
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
