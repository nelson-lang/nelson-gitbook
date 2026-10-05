#import "nelson_help.typ": *

= h5ls <hdf5:h5ls>

List the content of an HDF5 file.

== Syntax

- #raw("h5ls(filename)");
- #raw("R = h5ls(filename)");
- #raw("h5ls(filename, location)");
- #raw("R = h5ls(filename, location)");

== Input argument

/ filename: a string: hdf5 filename.
/ location: a string: name of the path to list.

== Output argument

/ R: a cell of strings with two columns (first column gives the names and the second one the type of the listed element).

== Description

#strong[h5dump]; list the content of hdf5 file.


== Example

``````matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5ls([tempdir(), 'myfile.h5'])
R = h5ls([tempdir(), 'myfile.h5'])
``````


== See also

#nlink(<hdf5:h5dump>)[h5dump];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
