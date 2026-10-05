#import "nelson_help.typ": *

= netcdf.inqDimIDs <netcdf:netcdf_inqDimIDs>

Work with netCDF dimensions.

== Syntax

- #raw("dimids = netcdf.inqDimIDs(ncid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ dimid: Dimension identifier.
/ dimname: Dimension name.
/ dimlen: Dimension length or NC\_UNLIMITED.

== Output argument

/ dimids: Return value described by the syntax shown above.

== Description

netcdf.inqDimIDs exposes low-level dimension metadata.

 Dimensions define the shape of variables and can be shared by several variables in the same group.


== Example

Copy-paste example for netcdf.inqDimIDs.

``````matlab
filename = [tempdir(), 'help_netcdf_inqDimIDs.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
dimids = netcdf.inqDimIDs(ncid);
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
