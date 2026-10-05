#import "nelson_help.typ": *

= continue <interpreter:continue>

continue evaluation in loop.

== Syntax

- #raw("continue");

== Description

#strong[continue]; statement can be used inside a #strong[for]; or a#strong[while]; loop.

 #strong[continue]; statement is used to pass control to the next iteration of a loop.


== Example

``````matlab

for i=1:10
  if (i == 5)
    continue;
    disp('never here')
    disp(i)
  else
    disp(i)
  end
end

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
