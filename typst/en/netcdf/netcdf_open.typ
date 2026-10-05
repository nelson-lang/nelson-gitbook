#import "nelson_help.typ": *

= netcdf.open <netcdf:netcdf_open>

Open a netCDF data source.

== Syntax

- #raw("ncid = netcdf.open(filename, mode)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ filename: Path of the file when used by create or open.
/ mode: Numeric mode built from netCDF constants when required.

== Output argument

/ ncid: Return value described by the syntax shown above.

== Description

netcdf.open is a low-level wrapper around the corresponding netCDF C library operation.

 Low-level functions use numeric identifiers returned by netcdf.create, netcdf.open, and related calls.


== Example

Copy-paste example for netcdf.open.

``````matlab
filename = [tempdir(), 'help_netcdf_open.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.close(ncid);
ncid = netcdf.open(filename, netcdf.getConstant('NC_NOWRITE'));
netcdf.close(ncid);
``````


== See also

#nlink(<netcdf:netcdf_create>)[netcdf.create];, #nlink(<netcdf:netcdf_open>)[netcdf.open];, #nlink(<netcdf:netcdf_close>)[netcdf.close];, #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
