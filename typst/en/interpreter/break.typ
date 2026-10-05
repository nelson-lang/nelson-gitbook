#import "nelson_help.typ": *

= break <interpreter:break>

exit evaluation loop.

== Syntax

- #raw("break");

== Description

#strong[break]; statement is used to exit a loop prematurely.

 #strong[break]; statement can be used inside a #strong[for]; or a#strong[while]; loop.


== Example

``````matlab

for i = 1:10
  if i == 5
   disp('i == 5');
   break;
  end
  disp(i)
end

``````


== See also

#nlink(<interpreter:abort>)[return];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
