#import "nelson_help.typ": *

= nccreate <netcdf:nccreate>

Create a variable in a netCDF file.

== Syntax

- #raw("nccreate(filename, varname, 'Dimensions', dimensions)");
- #raw("nccreate(filename, varname, 'Dimensions', dimensions, 'Datatype', datatype)");

== Input argument

/ filename: Path of the netCDF file to create or update.
/ varname: Variable name to define in the file.
/ dimensions: Cell array containing dimension name and length pairs, for example {'time', 3}.
/ datatype: Optional Nelson datatype name such as 'double', 'single', 'int32', or 'char'.

== Output argument

/ none: This function does not return a value.

== Description

nccreate defines a variable and its dimensions in a local netCDF file. If the file does not exist, it is created.

 Use name-value pairs to describe the variable schema before writing data with ncwrite.


== Example

Copy-paste example for nccreate.

``````matlab
filename = [tempdir(), 'help_nccreate.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
info = ncinfo(filename);
info.Variables(1).Name
``````


== See also

#nlink(<netcdf:ncwrite>)[ncwrite];, #nlink(<netcdf:ncread>)[ncread];, #nlink(<netcdf:ncinfo>)[ncinfo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
