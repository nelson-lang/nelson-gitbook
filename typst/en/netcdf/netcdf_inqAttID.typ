#import "nelson_help.typ": *

= netcdf.inqAttID <netcdf:netcdf_inqAttID>

Work with netCDF attributes.

== Syntax

- #raw("attid = netcdf.inqAttID(ncid, varid, attname)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ varid: Variable identifier, or NC\_GLOBAL for a global attribute.
/ attname: Attribute name.
/ attvalue: Attribute value.

== Output argument

/ attid: Return value described by the syntax shown above.

== Description

netcdf.inqAttID exposes low-level attribute operations.

 Attributes store metadata such as units, titles, comments, scale factors, and valid ranges.


== Example

Copy-paste example for netcdf.inqAttID.

``````matlab
filename = [tempdir(), 'help_netcdf_inqAttID.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.putAtt(ncid, netcdf.getConstant('NC_GLOBAL'), 'title', 'sample file');
attid = netcdf.inqAttID(ncid, netcdf.getConstant('NC_GLOBAL'), 'title');
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
