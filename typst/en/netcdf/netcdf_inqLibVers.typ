#import "nelson_help.typ": *

= netcdf.inqLibVers <netcdf:netcdf_inqLibVers>

Return netCDF C library version information.

== Syntax

- #raw("version = netcdf.inqLibVers()");

== Input argument

/ none: This function does not require input arguments.

== Output argument

/ version: Return value described by the syntax shown above.

== Description

netcdf.inqLibVers reports the runtime netCDF C library version.

 This is useful when diagnosing format support and optional library features.


== Example

Copy-paste example for netcdf.inqLibVers.

``````matlab
version = netcdf.inqLibVers()
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
