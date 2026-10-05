#import "nelson_help.typ": *

= web <webview:web>

Open a web page, local file, or HTML text.

== Syntax

- #raw("web()");
- #raw("web(url)");
- #raw("web(url, option1, ..., optionN)");
- #raw("stat = web(...)");
- #raw("[stat, h, url] = web(...)");

== Input argument

/ url: a string: web address, local file path, file URL, or text URL.
/ option: one of '-browser', '-new', '-noaddressbox', or '-notoolbar'.

== Output argument

/ stat: 0 on success, nonzero otherwise.
/ h: HTML viewer handle, or empty when the system browser is used.
/ url: current HTML viewer input, or an empty string when the system browser is used.

== Description

#strong[web]; opens external addresses in the system browser and opens local or inline HTML content in the Nelson HTML viewer.


== Example

Display inline HTML text.

``````matlab
[stat, h] = web('text://<html><body><h1>Hello</h1></body></html>');
``````


== See also

#nlink(<webview:nelson_htmlviewer_htmlviewer>)[nelson.htmlviewer.htmlviewer];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
