#import "nelson_help.typ": *

= ncreadatt <netcdf:ncreadatt>

Read an attribute from a netCDF file or variable.

== Syntax

- #raw("attvalue = ncreadatt(filename, location, attname)");

== Input argument

/ filename: Path of the netCDF data source.
/ location: Variable name, or '\/' for a global attribute.
/ attname: Attribute name.

== Output argument

/ attvalue: Return value described by the syntax shown above.

== Description

ncreadatt reads metadata stored as netCDF attributes.

 Use this function for high-level attribute access when variable names are known.


== Example

Copy-paste example for ncreadatt.

``````matlab
filename = [tempdir(), 'help_ncreadatt.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 2});
ncwriteatt(filename, 'temperature', 'units', 'degree');
units = ncreadatt(filename, 'temperature', 'units')
``````


== See also

#nlink(<netcdf:ncwriteatt>)[ncwriteatt];, #nlink(<netcdf:ncinfo>)[ncinfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
