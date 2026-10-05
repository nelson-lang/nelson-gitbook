#import "nelson_help.typ": *

= input <console:input>

Display prompt and wait for user input.

== Syntax

- #raw("r = input(prompt_str)");
- #raw("r = input(prompt_str, 's')");

== Input argument

/ prompt\_str: a string: temp. prompt displayed

== Output argument

/ r: a string

== Description

Display prompt and wait for user input. input returns a string which is the expression entered at keyboard.


== Example

``````matlab
res = input('Please input a value ', 's');
r = execstr(['A = ', res, ';'], 'errcatch');
if (r)
  disp('It was a value.');
  disp(A)
else
 disp('It was NOT a value.');
end
``````


== See also

#nlink(<core:execstr>)[execstr];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
