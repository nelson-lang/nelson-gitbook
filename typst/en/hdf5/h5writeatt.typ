#import "nelson_help.typ": *

= h5writeatt <hdf5:h5writeatt>

Writes HDF5 attribute.

== Syntax

- #raw("h5writeatt(filename, location, attname, attvalue)");
- #raw("h5writeatt(filename, location, attname, attvalue, 'TextEncoding', encoding)");

== Input argument

/ filename: a string: hdf5 filename.
/ location: a string: full path identifying a group or variable.
/ attname: a string: name of an attribute.
/ attvalue: a value: supported types: double, uint64, uint32, uint16, uint8 single, int64, int32, int16, or int8.
/ encoding: a string: 'system' or 'UTF-8' ('UTF-8' default).

== Description

#strong[h5writeatt]; writes attribute named#strong[attname]; with the value #strong[attvalue]; to the HDF5 file.


== Example

``````matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5writeatt([tempdir(), 'myfile.h5'],'/','creation_date', '26-Dec-2018 16:55:32')
``````


== See also

#nlink(<hdf5:h5readatt>)[h5readatt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
