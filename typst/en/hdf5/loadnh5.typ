#import "nelson_help.typ": *

= loadnh5 <hdf5:loadnh5>

load data from .nh5 file into Nelson's workspace.

== Syntax

- #raw("loadnh5(filename)");
- #raw("st = loadnh5(filename)");
- #raw("loadnh5(filename, var1, ..., varN)");
- #raw("st = loadnh5(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .nh5 filename.
/ var1, ..., varN: string: Names of variables to load into Nelson's workspace.

== Output argument

/ st: a structure with variables name as fieldnames.

== Description

#strong[loadnh5]; loads data from .nh5 file to Nelson's workspace.

 .nh5 file uses hdf5 file as container.


== Example

``````matlab
A = ones(3, 4);
B = 'hello for open mat users';
savenh5([tempdir(), 'example_h5load.nh5'], 'A', 'B')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
``````


== See also

#nlink(<hdf5:savenh5>)[savenh5];, #nlink(<hdf5:h5read>)[h5read];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
