#import "nelson_help.typ": *

= netcdf.inqGrpParent <netcdf:netcdf_inqGrpParent>

Work with netCDF groups.

== Syntax

- #raw("parentid = netcdf.inqGrpParent(grpid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ grpid: Group identifier.
/ name: Group name.

== Output argument

/ parentid: Return value described by the syntax shown above.

== Description

netcdf.inqGrpParent exposes group operations available in netCDF-4 files.

 Groups organize dimensions, variables, and attributes into a hierarchy.


== Example

Copy-paste example for netcdf.inqGrpParent.

``````matlab
filename = [tempdir(), 'help_netcdf_inqGrpParent.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
gid = netcdf.defGrp(ncid, 'science');
parent = netcdf.inqGrpParent(gid);
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
