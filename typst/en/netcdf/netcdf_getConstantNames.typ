#import "nelson_help.typ": *

= netcdf.getConstantNames <netcdf:netcdf_getConstantNames>

Return names of constants known by the netCDF module.

== Syntax

- #raw("names = netcdf.getConstantNames()");

== Input argument

/ none: This function does not require input arguments.

== Output argument

/ names: Return value described by the syntax shown above.

== Description

netcdf.getConstantNames lists symbolic constants accepted by netcdf.getConstant.

 The list includes file modes, formats, datatypes, fill modes, storage modes, and common identifiers.


== Example

Copy-paste example for netcdf.getConstantNames.

``````matlab
names = netcdf.getConstantNames();
names(1)
``````


== See also

#nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
