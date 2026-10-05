#import "nelson_help.typ": *

= netcdf.inq <netcdf:netcdf_inq>

Return information about an open netCDF file.

== Syntax

- #raw("[numdims, numvars, numglobalatts, unlimdimid] = netcdf.inq(ncid)");

== Input argument

/ ncid: Open netCDF file or group identifier.
/ filename: Path of the file when used by create or open.
/ mode: Numeric mode built from netCDF constants when required.

== Output argument

/ \[numdims, numvars, numglobalatts, unlimdimid\]: Return value described by the syntax shown above.

== Description

netcdf.inq is a low-level wrapper around the corresponding netCDF C library operation.

 Low-level functions use numeric identifiers returned by netcdf.create, netcdf.open, and related calls.


== Example

Copy-paste example for netcdf.inq.

``````matlab
filename = [tempdir(), 'help_netcdf_inq.nc'];
ncid = netcdf.create(filename, netcdf.getConstant('NC_CLOBBER'));
netcdf.defDim(ncid, 'x', 3);
[ndims, nvars, natts, unlimdimid] = netcdf.inq(ncid);
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
