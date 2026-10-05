#import "../../nelson_help.typ": *

= uihtml <graphics:2_graphics_objects.3_ui_controls.uihtml>

Create an HTML UI component.

== Syntax

- #raw("h = uihtml()");
- #raw("h = uihtml(parent)");
- #raw("h = uihtml(..., propertyName, propertyValue)");

== Input argument

/ parent: parent object.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI object.

== Description

#strong[h \= uihtml()]; creates a component that displays an HTML page inside a UI figure and exchanges data with it.

 #strong[uihtml requires the WebView desktop.]; Anywhere else it raises #strong[Nelson:uihtml:webviewDesktopRequired];, because no page can be displayed there. Start the WebView desktop to use it.

 #strong[HTMLSource]; accepts two forms: HTML markup, or the name of an HTML file (relative or absolute). It is stored exactly as given. A URL is not accepted.

 The page must define a global #strong[setup]; function taking one argument. It runs once the content has loaded, and again whenever #strong[HTMLSource]; changes to a different value. Setting the same value again changes nothing.

 The object passed to #strong[setup]; carries the property #strong[Data];, the methods #strong[addEventListener]; and #strong[removeEventListener];, and the method #strong[sendEventToNelson(name, data)];. Note that pages written for other environments name that last method differently and must be edited.

 Notification is asymmetric. Writing #strong[Data]; from Nelson raises the #strong[DataChanged]; event in the page and does #strong[not]; run #strong[DataChangedFcn];. Writing it from the page runs #strong[DataChangedFcn];, whose event carries #strong[Data]; and #strong[PreviousData];, and is not sent back down. Writing a value equal to the current one notifies nobody.

 #strong[Data]; travels as JSON in both directions, so a value comes back as #strong[jsonencode]; followed by #strong[jsondecode]; leaves it: integers arrive as double, row vectors come back as columns, #strong[datetime]; and #strong[categorical]; arrive as text, and complex values cannot be sent at all.

 Use #strong[sendEventToHTMLSource]; to send a named event to the page; the page receives it through #strong[addEventListener];. A page event reaches Nelson through #strong[HTMLEventReceivedFcn];, whose event carries #strong[HTMLEventName]; and #strong[HTMLEventData];. Page events are delivered in the order the page sent them.

 The page keeps its state while it is hidden, while its tab is not selected, and across a change of parent inside the desktop. Moving a figure between its own window and the docked desktop is not one of those: the page moves to another document and is rebuilt, and #strong[setup]; runs again.

 Write a page that can rebuild itself. #strong[Data]; keeps its value across such a rebuild, so read it in #strong[setup]; and render from it there, rather than waiting for #strong[DataChanged]; - a notification a fresh page has already missed. A page that only renders on #strong[DataChanged]; comes back empty, and re-running the handshake does not save it: writing the value already published notifies nobody.


== Example

a page that reads Data and answers with an event

``````matlab

f = uifigure();
page = ['<html><body><p id="out">waiting</p><script>', ...
  'function setup(h) {', ...
  '  h.addEventListener("DataChanged", function () {', ...
  '    document.getElementById("out").textContent = JSON.stringify(h.Data);', ...
  '  });', ...
  '  h.sendEventToNelson("ready", {});', ...
  '}</script></body></html>'];
h = uihtml(f, 'Position', [10 10 400 200], 'HTMLSource', page);
h.HTMLEventReceivedFcn = @(src, evt) disp(evt.HTMLEventName);
h.Data = struct('temperature', 21.5);

``````


== See also

#nlink(<gui:uifigure>)[uifigure];, #nlink(<json:jsonencode>)[jsonencode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
