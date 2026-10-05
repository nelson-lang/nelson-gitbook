#import "nelson_help.typ": *

= isnh5file <hdf5:isnh5file>

Checks if filename a valid .nh5 file

== Syntax

- #raw("tf = isnh5file(filename)");
- #raw("[tf, version, header] = isnh5file(filename)");

== Input argument

/ filename: a string: .nh5 filename.

== Output argument

/ tf: a logical: true if it is a valid .nh5 file.
/ version: a string array: "-v1" or " " if it is undefined.
/ header: a string array: header of nh5 file (date created).

== Description

#strong[isnh5file]; checks if filename a valid .nh5 file.


== Example

``````matlab
A = ones(3, 4);
savemat([tempdir(), 'example_isnh5.mat'], 'A')
R = isnh5file([tempdir(), 'example_isnh5.mat'])
h5save([tempdir(), 'example_isnh5.nh5'], 'A')
[R, VER, HE] = isnh5file([tempdir(), 'example_isnh5.nh5'])
``````


== See also

#nlink(<matio:ismatfile>)[ismatfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
