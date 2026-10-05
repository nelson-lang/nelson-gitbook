#import "nelson_help.typ": *

= netcdf <netcdf:netcdf>

Low-level NetCDF package interface.

== Syntax

- #raw("netcdf.method(...)");
- #raw("netcdf.getConstant(name)");

== Input argument

/ method: name of a static low-level NetCDF operation.
/ name: constant name accepted by getConstant.

== Output argument

/ varargout: outputs returned by the selected low-level operation.

== Description

netcdf is a class that groups low-level NetCDF operations as static methods.

 Use the high-level ncinfo, ncread, ncwrite, and related functions when they fit the task.


== Used function(s)

NetCDF C library

== Example

Query the linked NetCDF library version.

``````matlab
versionText = netcdf.inqLibVers()
``````


== See also

#nlink(<netcdf:ncinfo>)[ncinfo];, #nlink(<netcdf:ncread>)[ncread];, #nlink(<netcdf:ncwrite>)[ncwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
