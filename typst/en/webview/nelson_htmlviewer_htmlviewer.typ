#import "nelson_help.typ": *

= nelson.htmlviewer.htmlviewer <webview:nelson_htmlviewer_htmlviewer>

Handle to a Nelson HTML viewer window.

== Syntax

- #raw("h = nelson.htmlviewer.htmlviewer()");
- #raw("h = nelson.htmlviewer.htmlviewer(input)");
- #raw("htmlText = getHTMLText(h)");
- #raw("close(h)");

== Input argument

/ input: a string: local file path, file URL, or text URL.

== Output argument

/ h: HTML viewer handle.
/ htmlText: current HTML document text.

== Description

The #strong[nelson.htmlviewer.htmlviewer]; class represents an HTML viewer window. Its public properties are #strong[Input]; and #strong[Visible];.


== Example

Display HTML and read the document text.

``````matlab
h = nelson.htmlviewer.htmlviewer('text://<html><body>Hello</body></html>');
txt = getHTMLText(h);
close(h);

``````


== See also

#nlink(<webview:web>)[web];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
