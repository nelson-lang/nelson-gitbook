#import "nelson_help.typ": *

= switch <interpreter:switch>

switch statement.

== Syntax

- #raw("switch(expression), case test_expression_1, statements, case test_expression_2, statements, otherwise statements, end");

== Description

#strong[switch]; statement is used to selective execute code based on the value of either scalar value or a string.

 #strong[otherwise]; clause is optional.


== Examples

demo\_switch.m

``````matlab
function c = demo_switch(a)
 switch(a)
    case {'hello', 'world'}
      c = 'message';
    case {'red', 'green', 'blue'}
      c = 'color';
    otherwise
      c = 'not sure';
  end
end

``````

``````matlab
demo_switch('hello')
demo_switch('red')
demo_switch('?')

``````


== See also

#nlink(<interpreter:for>)[for];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
