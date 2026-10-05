#import "nelson_help.typ": *

= netcdf.inqDim <netcdf:netcdf_inqDim>

Work with netCDF dimensions.

== Syntax

- #raw("[dimname, dimlen] = netcdf.inqDim(ncid, dimid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ dimid: Dimension identifier.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Output argument

/ \[dimname, dimlen\]: Return value described by the syntax shown above.

== Description

netcdf.inqDim exposes low-level dimension metadata.

 Dimensions define the shape of variables and can be shared by several variables in the same group.


== Example

Copy-paste example for netcdf.inqDim.

``````matlab
filename = [tempdir(), 'help_netcdf_inqDim.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
dimid = netcdf.defDim(ncid, 'x', 3);
[name, len] = netcdf.inqDim(ncid, dimid);
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
