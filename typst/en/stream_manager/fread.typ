#import "nelson_help.typ": *

= fread <stream_manager:fread>

Read data in binary form to the file specified by the file descriptor fid.

== Syntax

- #raw("res = fread(fid)");
- #raw("res = fread(fid, sz, precision)");
- #raw("res = fread(fid, sz, precision, skip)");
- #raw("res = fread(fid, sz, precision, arch)");
- #raw("res = fread(fid, sz, precision, skip, arch)");
- #raw("[res, count] = fread(fid, sz, precision, skip, arch)");

== Input argument

/ fid: a file descriptor
/ sz: Dimensions of output array: scalar, \[m,n\] or \[m, Inf\]
/ precision: class of values to read
/ skip: number of bytes to skip
/ arch: a string specifying the data format for the file.

== Output argument

/ res: a vector of floating point or integer type numbers
/ count: number of characters reads into res

== Description

Read data in binary form to the file specified by the file descriptor fid.

 supported architecture:

 #strong[native]; , #strong[n];: format of the current machine.

 #strong[ieee-be];, #strong[b];: IEEE big endian.

 #strong[ieee-le];, #strong[l];: IEEE little endian.

 characters encoding uses #strong[fopen]; parameter.


== Examples

``````matlab

A = rand(3,1)
fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);

``````

``````matlab

fileID = fopen([tempdir(), 'uint16nine.bin'],'w');
fwrite(fileID,[1:9],'uint16');
fclose(fileID);

fileID = fopen([tempdir(), 'uint16nine.bin'],'r');
A = fread(fileID,[4,Inf],'uint16')
fclose(fileID);

``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fwrite>)[fwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
