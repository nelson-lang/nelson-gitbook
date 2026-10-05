#import "../../nelson_help.typ": *

= polarbubblechart <graphics:1_plots.2_polar_plots.polarbubblechart>

Display bubble chart in polar coordinates.

== Syntax

- #raw("polarbubblechart(theta, rho, sz)");
- #raw("polarbubblechart(theta, rho, sz, color)");
- #raw("polarbubblechart(tbl, thetavar, rhovar, szvar)");
- #raw("polarbubblechart(tbl, thetavar, rhovar, szvar, colorvar)");
- #raw("polarbubblechart(parent, ...)");
- #raw("h = polarbubblechart(...)");

== Description

#strong[polarbubblechart]; displays polar markers whose size is controlled by bubble size data.

 Table input selects theta, radius, size, and optional color data from variables in #strong[tbl];. Multiple selected variables create multiple #strong[bubblechart]; objects.


== Examples

Create a polar bubble chart.

``````matlab
theta = linspace(0, 2*pi, 12);
rho = 1 + cos(theta).^2;
sz = 20 + 60 * abs(sin(theta));
polarbubblechart(theta, rho, sz, 'b');
``````


#align(center)[#image("polarbubblechart_1.svg")]
Create a polar bubble chart from a table.

``````matlab
t = table([0; pi/4; pi/2], [1; 2; 3], [25; 36; 49], [1; 2; 3], ...
  'VariableNames', {'theta', 'rho', 'sz', 'c'});
h = polarbubblechart(t, 'theta', 'rho', 'sz', 'c');
``````


#align(center)[#image("polarbubblechart_2.svg")]

== See also

#nlink(<graphics:1_plots.4_data_distribution_plots.bubblechart>)[bubblechart];, #nlink(<graphics:1_plots.2_polar_plots.polarscatter>)[polarscatter];.
