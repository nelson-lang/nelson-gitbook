#import "nelson_help.typ": *

= netcdf.inqGrps <netcdf:netcdf_inqGrps>

Work with netCDF groups.

== Syntax

- #raw("grps = netcdf.inqGrps(ncid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ grpid: Group identifier.
/ name: Group name.

== Output argument

/ grps: Return value described by the syntax shown above.

== Description

netcdf.inqGrps exposes group operations available in netCDF-4 files.

 Groups organize dimensions, variables, and attributes into a hierarchy.


== Example

Copy-paste example for netcdf.inqGrps.

``````matlab
filename = [tempdir(), 'help_netcdf_inqGrps.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
netcdf.defGrp(ncid, 'science');
groups = netcdf.inqGrps(ncid);
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
