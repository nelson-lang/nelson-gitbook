#import "nelson_help.typ": *

= netcdf.getAtt <netcdf:netcdf_getAtt>

Work with netCDF attributes.

== Syntax

- #raw("attvalue = netcdf.getAtt(ncid, varid, attname)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier, or NC\_GLOBAL for a global attribute.
/ attname: Attribute name.
/ attvalue: Attribute value.

== Output argument

/ attvalue: Return value described by the syntax shown above.

== Description

netcdf.getAtt exposes low-level attribute operations.

 Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.


== Example

Copy-paste example for netcdf.getAtt.

``````matlab
filename = [tempdir(), 'help_netcdf_getAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
title = netcdf.getAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_putVar>)[netcdf.putVar];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
