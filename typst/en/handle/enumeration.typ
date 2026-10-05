#import "nelson_help.typ": *

= enumeration <handle:enumeration>

Returns enumeration member names for a classdef enumeration class.

== Syntax

- #raw("c = enumeration(obj)");
- #raw("c = enumeration(className)");

== Input argument

/ obj: a classdef enumeration object
/ className: an enumeration class name as a string

== Output argument

/ c: a cell of strings

== Description

#strong[enumeration]; returns the public enumeration members declared by a classdef class.

 Enumeration members can be accessed as #strong[ClassName.MemberName];.

 Enumeration members can pass constructor arguments; stored properties initialized by the constructor are copied to the member value.


== Examples

List enumeration members.

``````matlab
d = [tempdir(), 'nelson_help_enumeration/'];
mkdir(d);
filewrite([d, '/NelsonHelpColor.m'], ["classdef NelsonHelpColor"; "  enumeration"; "    Red"; "    Blue"; "  end"; "end"]);
addpath(d);
members = enumeration('NelsonHelpColor')
``````

Use constructor arguments in enumeration members.

``````matlab
d = [tempdir(), 'nelson_help_enumeration_ctor/'];
if ~isdir(d)
  mkdir(d);
end
filewrite([d, '/NelsonHelpLevel.m'], ["classdef NelsonHelpLevel"; "  properties"; "    Code = 0"; "  end"; "  methods"; "    function obj = NelsonHelpLevel(code)"; "      if nargin > 0"; "        obj.Code = code;"; "      end"; "    end"; "  end"; "  enumeration"; "    Low(1)"; "    High(2)"; "  end"; "end"]);
addpath(d);
high = eval('NelsonHelpLevel.High');
high.Code
``````


== See also

#nlink(<handle:metaclass>)[metaclass];, #nlink(<interpreter:classdef>)[classdef];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [classdef enumeration support added],
)

// Author: Allan CORNET
