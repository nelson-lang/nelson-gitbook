#import "../../nelson_help.typ": *

= uidatepicker <graphics:2_graphics_objects.3_ui_controls.uidatepicker>

Create date picker component.

== Syntax

- #raw("h = uidatepicker()");
- #raw("h = uidatepicker(parent)");
- #raw("h = uidatepicker(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[d \= uidatepicker]; creates a date picker whose #strong[Value]; is a datetime scalar (NaT when empty). Properties: #strong[DisplayFormat]; (LDML), #strong[Limits];, #strong[DisabledDates];, #strong[DisabledDaysOfWeek];, #strong[Editable];, #strong[ValueChangedFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Date picker', 'Position', [100 100 420 260]);
dp = uidatepicker(f, 'Position', [120 115 180 24]);
dp.Value = datetime(2026, 7, 19);
drawnow();
``````


#align(center)[#image("uidatepicker_example.svg")]
uidatepicker

``````matlab

f = uifigure();
d = uidatepicker(f, 'Value', datetime(2026, 7, 18));

``````


== See also

#nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
