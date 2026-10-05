#import "nelson_help.typ": *

= netcdf.inqAtt <netcdf:netcdf_inqAtt>

Work with netCDF attributes.

== Syntax

- #raw("[xtype, len] = netcdf.inqAtt(ncid, varid, attname)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier, or NC\_GLOBAL for a global attribute.
/ attname: Attribute name.
/ attvalue: Attribute value.

== Output argument

/ \[xtype, len\]: Return value described by the syntax shown above.

== Description

netcdf.inqAtt exposes low-level attribute operations.

 Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.


== Example

Copy-paste example for netcdf.inqAtt.

``````matlab
filename = [tempdir(), 'help_netcdf_inqAtt.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
[xtype, len] = netcdf.inqAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
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
