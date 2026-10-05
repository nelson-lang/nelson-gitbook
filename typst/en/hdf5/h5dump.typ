#import "nelson_help.typ": *

= h5dump <hdf5:h5dump>

dump the content of hdf5 file as text.

== Syntax

- #raw("h5dump(filename)");
- #raw("R = h5dump(filename)");
- #raw("h5dump(filename, location)");
- #raw("R = h5dump(filename, location)");

== Input argument

/ filename: a string: hdf5 filename.
/ location: a string: name of the path to dump.

== Output argument

/ R: a string: dump of hdf5 file as text.

== Description

#strong[h5dump]; dump the content of hdf5 file as text.


== Example

``````matlab
h5create([tempdir(), 'myfile.h5'],'/myDataset2',[10 20]);
h5dump([tempdir(), 'myfile.h5'])
R = h5dump([tempdir(), 'myfile.h5'])
``````


== See also

#nlink(<hdf5:h5write>)[h5write];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
