#import "nelson_help.typ": *

= h5readatt <hdf5:h5readatt>

Read HDF5 attribute.

== Syntax

- #raw("attval = h5readatt(filename, location, attname)");

== Input argument

/ filename: a string: hdf5 filename.
/ location: a string: full path identifying a group or variable.
/ attname: a string: name of an attribute.

== Output argument

/ attval: a nelson's variable.

== Description

#strong[h5readatt]; reads attribute named #strong[attname]; from the HDF5 file.


== Example

``````matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset1',[10 20]);
h5writeatt([tempdir(), 'myfile.h5'],'/','creation_date', '26-Dec-2018 16:55:32')
h5readatt([tempdir(), 'myfile.h5'],'/','creation_date')
``````


== See also

#nlink(<hdf5:h5writeatt>)[h5writeatt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
