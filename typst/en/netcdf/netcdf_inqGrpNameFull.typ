#import "nelson_help.typ": *

= netcdf.inqGrpNameFull <netcdf:netcdf_inqGrpNameFull>

Work with netCDF groups.

== Syntax

- #raw("path = netcdf.inqGrpNameFull(grpid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ grpid: Group identifier.
/ name: Group name.

== Output argument

/ path: Return value described by the syntax shown above.

== Description

netcdf.inqGrpNameFull exposes group operations available in netCDF-4 files.

 Groups organize dimensions, variables, and attributes into a hierarchy.


== Example

Copy-paste example for netcdf.inqGrpNameFull.

``````matlab
filename = [tempdir(), 'help_netcdf_inqGrpNameFull.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
fullname = netcdf.inqGrpNameFull(gid);
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_create>)[netcdf.create];, #nlink(<netcdf:netcdf_defDim>)[netcdf.defDim];, #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
