#import "nelson_help.typ": *

= loadmat <matio:loadmat>

load data from .mat file into Nelson's workspace.

== Syntax

- #raw("loadmat(filename)");
- #raw("st = loadmat(filename)");
- #raw("loadmat(filename, var1, ..., varN)");
- #raw("st = loadmat(filename, var1, ..., varN)");

== Input argument

/ filename: a string: .mat filename.
/ var1, ..., varN: string: Names of variables to load into Nelson's workspace.

== Output argument

/ st: a structure with variables name as fieldnames.

== Description

#strong[loadmat]; loads data from .mat file to Nelson's workspace.


== Bibliography

Thanks to MATIO library (http:\/\/sourceforge.net\/projects\/matio\/).

== Example

``````matlab
A = ones(3, 4);
B = 'hello for open mat users';
savemat([tempdir(), 'example_loadmat.mat'], 'A', 'B')
clear;
st = loadmat([tempdir(), 'example_loadmat.mat']);
who
st.A
st.B
clear
who
loadmat([tempdir(), 'example_loadmat.mat']);
who
A
B

``````


== See also

#nlink(<stream_manager:load>)[load];, #nlink(<stream_manager:save>)[save];, #nlink(<matio:savemat>)[savemat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
