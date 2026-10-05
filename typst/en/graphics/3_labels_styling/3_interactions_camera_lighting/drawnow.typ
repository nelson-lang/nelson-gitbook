#import "../../nelson_help.typ": *

= drawnow <graphics:3_labels_styling.3_interactions_camera_lighting.drawnow>

Update figures and process callbacks

== Syntax

- #raw("drawnow()");
- #raw("drawnow('limitrate')");
- #raw("drawnow limitrate");

== Input argument

/ limitrate: Limits figure updates to reduce rendering work during animation loops.

== Description

#strong[drawnow]; flushes the event queue and updates the figure window.

 #strong[drawnow('limitrate')]; and #strong[drawnow limitrate]; process pending callbacks but skip figure updates when the previous update was recent. This mode is useful in animation loops.


== Examples

``````matlab
x = -pi:pi/20:pi;
plot(x, cos(x))
drawnow
title('Title Here ...')
grid on
``````

``````matlab
x = linspace(0, 2*pi, 200);
h = plot(x, sin(x));
for k = 1:20
  set(h, 'YData', sin(x + k / 10));
  drawnow limitrate
end
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.refresh>)[refresh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
