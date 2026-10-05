#import "nelson_help.typ": *

= netcdf.renameDim <netcdf:netcdf_renameDim>

Work with netCDF dimensions.

== Syntax

- #raw("netcdf.renameDim(ncid, dimid, newname)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ dimid: Dimension identifier.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Output argument

/ none: This function does not return a value.

== Description

netcdf.renameDim exposes low-level dimension metadata.

 Dimensions define the shape of variables and can be shared by several variables in the same group.


== Example

Copy-paste example for netcdf.renameDim.

``````matlab
filename = [tempdir(), 'help_netcdf_renameDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
netcdf.renameDim(ncid, dimid, 'samples');
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_defVar>)[netcdf.defVar];, #nlink(<netcdf:netcdf_inq>)[netcdf.inq];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
