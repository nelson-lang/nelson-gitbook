#import "nelson_help.typ": *

= netcdf.defVlen <netcdf:netcdf_defVlen>

Work with netCDF user-defined variable length types.

== Syntax

- #raw("xtype = netcdf.defVlen(ncid, typeName, baseType)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ xtype: User-defined type identifier.
/ typeName: Name of the user-defined type.
/ baseType: Base netCDF datatype constant.

== Output argument

/ xtype: Return value described by the syntax shown above.

== Description

netcdf.defVlen exposes user-defined type metadata from netCDF-4 files.

 Variable length types require netCDF-4 support in the linked library.


== Example

Copy-paste example for netcdf.defVlen.

``````matlab
filename = [tempdir(), 'help_netcdf_defVlen.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
typeid = netcdf.defVlen(ncid, 'sample_vlen', netcdf.getConstant('NC_DOUBLE'));
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];, #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
