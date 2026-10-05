#import "nelson_help.typ": *

= netcdf.getVar <netcdf:netcdf_getVar>

Work with netCDF variables.

== Syntax

- #raw("data = netcdf.getVar(ncid, varid)");
- #raw("data = netcdf.getVar(ncid, varid, start, count, stride)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier.
/ varname: Variable name.
/ xtype: netCDF datatype constant.
/ dimids: Dimension identifier or vector of identifiers.
/ data: Nelson array to write.

== Output argument

/ data: Return value described by the syntax shown above.

== Description

netcdf.getVar exposes low-level variable access.

 Low-level start and count arguments use zero-based netCDF C indexing semantics.


== Example

Copy-paste example for netcdf.getVar.

``````matlab
filename = [tempdir(), 'help_netcdf_getVar.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
varid = netcdf.defVar(ncid, 'temperature', netcdf.getConstant('NC_DOUBLE'), dimid);
netcdf.endDef(ncid);
netcdf.putVar(ncid, varid, [1 2 3]);
data = netcdf.getVar(ncid, varid);
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_defDim>)[netcdf.defDim];, #nlink(<netcdf:netcdf_putAtt>)[netcdf.putAtt];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
