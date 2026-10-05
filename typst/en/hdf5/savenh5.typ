#import "nelson_help.typ": *

= savenh5 <hdf5:savenh5>

save workspace variables to .nh5 file

== Syntax

- #raw("savenh5(filename)");
- #raw("savenh5(filename, var1, ..., varN)");
- #raw("savenh5(filename, '-append', ...)");
- #raw("savenh5(filename, '-nocompression', ...)");

== Input argument

/ filename: a string: .nh5 filename.
/ var1, ..., varN: string: Names of variables to save from Nelson's workspace.
/ '-append': append variables to an existing .nh5 file.
/ '-nocompression': disable .nh5 file compression.

== Description

#strong[savenh5]; save workspace variables to .nh5 file.

 .nh5 file uses hdf5 file as container.


== Examples

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

append variables

``````matlab
C = eye(3, 4);
savenh5([tempdir(), 'example_h5load.nh5'], 'C', '-append')
clear;
st = loadnh5([tempdir(), 'example_h5load.nh5']);
who
st.A
st.B
st.C
clear
who
loadnh5([tempdir(), 'example_h5load.nh5']);
who
A
B
C
``````

compression

``````matlab
C = eye(1000, 1000);
savenh5([tempdir(), 'example_h5save_with_compression.nh5'], 'C')
savenh5([tempdir(), 'example_h5save_no_compression.nh5'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_h5save_with_compression.nh5'])
no_compression = dir([tempdir(), 'example_h5save_no_compression.nh5'])
``````


== See also

#nlink(<hdf5:loadnh5>)[loadnh5];, #nlink(<hdf5:h5write>)[h5write];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
