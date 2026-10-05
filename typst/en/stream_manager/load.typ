#import "nelson_help.typ": *

= load <stream_manager:load>

load data from .nh5 or .mat file into Nelson's workspace.

== Syntax

- #raw("load(filename)");
- #raw("st = load(filename)");
- #raw("load(filename, var1, ..., varN)");
- #raw("st = load(filename, var1, ..., varN)");
- #raw("load(filename, '-mat')");
- #raw("load(filename, '-nh5')");

== Input argument

/ filename: a string: .nh5 or .mat filename.
/ '-mat' or '-nh5': forces to read file as nh5 or mat.
/ var1, ..., varN: string: Names of variables to load into Nelson's workspace.

== Output argument

/ st: a structure with variables name as fieldnames.

== Description

#strong[load]; loads data from .nh5 or .mat file to Nelson's workspace.

 Classdef objects saved by Nelson are restored as classdef objects when their class definition is available on the path.


== Examples

``````matlab
A = ones(3, 4);
B = 'hello for open mat users';
save([tempdir(), 'example_load.mat'], 'A', 'B')
clear;
st = load([tempdir(), 'example_load.mat']);
who
st.A
st.B
clear
who
load([tempdir(), 'example_load.mat']);
who
A
B

``````

Load a saved classdef object.

``````matlab
clear classes
d = [tempdir(), 'nelson_help_load_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpLoadPoint.m'], ["classdef NelsonHelpLoadPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
point = NelsonHelpLoadPoint();
point.X = 7;
point.Y = 8;
filename = [tempdir(), 'nelson_help_load_classdef.nh5'];
save(filename, 'point');
clear point;
clear classes;
loaded = load(filename);
className = class(loaded.point)
coordinates = [loaded.point.X, loaded.point.Y]
``````


== See also

#nlink(<stream_manager:save>)[save];, #nlink(<matio:savemat>)[savemat];, #nlink(<hdf5:savenh5>)[savenh5];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef object load behavior documented],
)

// Author: Allan CORNET
