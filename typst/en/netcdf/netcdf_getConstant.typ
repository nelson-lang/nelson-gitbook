#import "nelson_help.typ": *

= netcdf.getConstant <netcdf:netcdf_getConstant>

Return the numeric value of a named netCDF constant.

== Syntax

- #raw("value = netcdf.getConstant(name)");

== Input argument

/ arguments: Input arguments follow the syntax shown above. File and group identifiers are numeric values returned by netCDF open, create, group, dimension, and variable definition calls. Named netCDF constants can be obtained with netcdf.getConstant.

== Output argument

/ value: Return value described by the syntax shown above.

== Description

netcdf.getConstant converts a netCDF C library constant name to its numeric value.

 Use constants instead of hard-coded numeric values for readable low-level code.


== Example

Copy-paste example for netcdf.getConstant.

``````matlab
mode = netcdf.getConstant('NC_CLOBBER')
``````


== See also

#nlink(<netcdf:netcdf_getConstantNames>)[netcdf.getConstantNames];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
