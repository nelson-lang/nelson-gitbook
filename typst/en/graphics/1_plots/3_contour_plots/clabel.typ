#import "../../nelson_help.typ": *

= clabel <graphics:1_plots.3_contour_plots.clabel>

Contour labeling

== Syntax

- #raw("clabel(C,h)");
- #raw("clabel(C,h,v)");
- #raw("clabel(C)");
- #raw("clabel(C,v)");
- #raw("tl = clabel(...)");
- #raw("clabel(...,Name,Value)");

== Input argument

/ C: Contour matrix returned by #strong[contour];, #strong[contourf];, or#strong[contour3];. If you pass a contour object #strong[h];, you may pass#strong[\[\]]; for #strong[C];.


/ h: Contour object handle returned by #strong[contour]; \/#strong[contourf]; \/#strong[contour3];. When provided, labeling uses information attached to the contour object (levels and contour matrix).


/ v: Vector of contour levels to label. When provided, only these levels receive labels.



== Output argument

/ t: Text objects created by #strong[clabel];. The #strong[String]; properties contain the contour values displayed.


/ tl: Text and line objects created when upright markers are used (for#strong[clabel(C)];-style usage).



== Description

The #strong[clabel]; function inserts labels into contour plots:

 

- Provide a contour matrix #strong[C]; and contour object#strong[h]; to label rotated text along contour lines.
- Provide only#strong[C]; to add upright labels and '+' markers at contour locations.
- Pass a vector of levels#strong[v]; to label only specific contour values.
- Use Name,Value pairs to control text appearance (a subset of Text properties, plus#strong[LabelSpacing];).
== Examples

Label contour plot levels (basic).

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h)
``````


#align(center)[#image("clabel_1.svg")]
Label specific contour levels.

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
v = [2,6];
clabel(C,h,v)
``````


#align(center)[#image("clabel_2.svg")]
Set contour label properties with Name,Value pairs.

``````matlab
figure();
[x,y,z] = peaks;
[C,h] = contour(x,y,z);
clabel(C,h,'FontSize',15,'Color','red')
``````


#align(center)[#image("clabel_3.svg")]
Label using only the contour matrix (upright labels).

``````matlab
figure();
[x,y,z] = peaks;
C = contour(x,y,z);
clabel(C)
``````


#align(center)[#image("clabel_4.svg")]

== See also

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
