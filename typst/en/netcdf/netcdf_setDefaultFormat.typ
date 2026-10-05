#import "nelson_help.typ": *

= netcdf.setDefaultFormat <netcdf:netcdf_setDefaultFormat>

Change the default file format used by netCDF create calls.

== Syntax

- #raw("oldFormat = netcdf.setDefaultFormat(format)");

== Input argument

/ arguments: Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

== Output argument

/ oldFormat: Return value described by the syntax shown above.

== Description

netcdf.setDefaultFormat sets the process default netCDF format.

 Prefer explicit creation modes when a file format matters for reproducibility.


== Example

Copy-paste example for netcdf.setDefaultFormat.

``````matlab
oldFormat = netcdf.setDefaultFormat(netcdf.getConstant('NC_FORMAT_NETCDF4'));
netcdf.setDefaultFormat(oldFormat);
``````


== See also

#nlink(<netcdf:netcdf_create>)[netcdf.create];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
