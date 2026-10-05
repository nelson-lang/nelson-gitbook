#import "nelson_help.typ": *

= h5read <hdf5:h5read>

Read HDF5 data set.

== Syntax

- #raw("val = h5read(filename, location)");

== Input argument

/ filename: a string: hdf5 filename.
/ location: a string: full path identifying a data set.

== Output argument

/ val: a nelson's variable.

== Description

#strong[h5read]; reads data set in #strong[location]; from the HDF5 file.

 If #strong[location]; identifies a Nelson object group, #strong[h5read]; reconstructs the stored legacy class object or classdef value\/handle object.


== Examples

``````matlab
h5_directory = [modulepath('hdf5','tests'), '/h5'];
double_data = [h5_directory, '/h5ex_t_float.h5'];
R = h5read(double_data,'/DS1')
``````

``````matlab
h5filename = [tempdir(), 'doc_h5read_class.h5'];
if isfile(h5filename) rmfile(h5filename) end
addpath([nelsonroot(), '/modules/overload/examples/complex']);
obj = complexObj(3, 4);
h5write(h5filename, '/obj', obj);
R = h5read(h5filename, '/obj');
class(R)
R.r
R.i
``````


== See also

#nlink(<hdf5:h5write>)[h5write];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [Nelson class objects can be reconstructed from object metadata.],
)

// Author: Allan CORNET
