#import "nelson_help.typ": *

= netcdf.renameAtt <netcdf:netcdf_renameAtt>

Work with netCDF attributes.

== Syntax

- #raw("netcdf.renameAtt(ncid, varid, oldname, newname)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier, or NC\_GLOBAL for a global attribute.
/ attname: Attribute name.
/ attvalue: Attribute value.

== Output argument

/ none: This function does not return a value.

== Description

netcdf.renameAtt exposes low-level attribute operations.

 Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.


== Example

Copy-paste example for netcdf.renameAtt.

``````matlab
filename = [tempdir(), 'help_netcdf_renameAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
netcdf.renameAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'description');
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
