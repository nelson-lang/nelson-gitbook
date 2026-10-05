#import "nelson_help.typ": *

= netcdf.inqNcid <netcdf:netcdf_inqNcid>

Work with netCDF groups.

== Syntax

- #raw("grpid = netcdf.inqNcid(ncid, name)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ grpid: Group identifier.
/ name: Group name.

== Output argument

/ grpid: Return value described by the syntax shown above.

== Description

netcdf.inqNcid exposes group operations available in netCDF-4 files.

 Groups organize dimensions, variables, and attributes into a hierarchy.


== Example

Copy-paste example for netcdf.inqNcid.

``````matlab
filename = [tempdir(), 'help_netcdf_inqNcid.nc'];
mode = bitor(netcdf.getConstant('NC_CLOBBER'), netcdf.getConstant('NC_NETCDF4'));
ncid = netcdf.create(filename, mode);
netcdf.defGrp(ncid, 'science');
gid = netcdf.inqNcid(ncid, 'science');
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
