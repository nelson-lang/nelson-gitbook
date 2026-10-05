#import "../../nelson_help.typ": *

= polarscatter <graphics:1_plots.2_polar_plots.polarscatter>

Display scatter points in polar coordinates.

== Syntax

- #raw("polarscatter(theta, rho)");
- #raw("polarscatter(theta, rho, sz)");
- #raw("polarscatter(theta, rho, sz, color)");
- #raw("polarscatter(tbl, thetavar, rhovar)");
- #raw("polarscatter(parent, ...)");
- #raw("h = polarscatter(...)");

== Description

#strong[polarscatter]; displays marker data using polar angle and radius values.

 Table input selects theta and radius data from variables in #strong[tbl];. Multiple selected variables create multiple #strong[scatter]; objects.


== Examples

Display filled polar markers.

``````matlab
theta = linspace(0, 2*pi, 24);
rho = 1 + sin(3 * theta);
polarscatter(theta, rho, 49, 'r', 'filled');
``````


#align(center)[#image("polarscatter_1.svg")]
Create a polar scatter chart from a table.

``````matlab
t = table([0; pi/4; pi/2], [1; 2; 3], 'VariableNames', {'theta', 'rho'});
h = polarscatter(t, 'theta', 'rho', 'filled');
``````


#align(center)[#image("polarscatter_2.svg")]

== See also

#nlink(<graphics:1_plots.2_polar_plots.polarplot>)[polarplot];, #nlink(<graphics:1_plots.2_polar_plots.polarbubblechart>)[polarbubblechart];.
