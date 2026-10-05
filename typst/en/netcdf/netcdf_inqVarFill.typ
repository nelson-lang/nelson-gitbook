#import "nelson_help.typ": *

= netcdf.inqVarFill <netcdf:netcdf_inqVarFill>

Configure or inspect netCDF-4 variable storage options.

== Syntax

- #raw("[noFillMode, fillValue] = netcdf.inqVarFill(ncid, varid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier.
/ storage: NC\_CHUNKED or NC\_CONTIGUOUS.
/ chunksizes: Chunk size vector.
/ fillValue: Default value used for unwritten data.

== Output argument

/ \[noFillMode, fillValue\]: Return value described by the syntax shown above.

== Description

netcdf.inqVarFill controls variable storage metadata for netCDF-4 files.

 Compression, chunking, fill values, and checksums must be defined before leaving define mode.


== Example

Copy-paste example for netcdf.inqVarFill.

``````matlab
filename = [tempdir(), 'help_netcdf_inqVarFill.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.defVarFill(ncid, varid, 0, -999);
[noFill, fillValue] = netcdf.inqVarFill(ncid, varid);
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
