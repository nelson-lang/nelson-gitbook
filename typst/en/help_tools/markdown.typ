#import "nelson_help.typ": *

= markdown <help_tools:markdown>

Converts markdown to html.

== Syntax

- #raw("html_txt = markdown(md_txt)");
- #raw("html_txt = markdown(md_txt, options)");
- #raw("status = markdown(md_filename, html_filename)");
- #raw("status = markdown(md_filename, html_filename, options)");

== Input argument

/ md\_txt: a string: markdown text to convert.
/ md\_filename: a string: markdown filename to convert (source).
/ html\_filename: a string: html filename (destination).
/ options: a string: options for the conversion. 'secure' (default), or 'advanced'.

== Output argument

/ status: a logical: html file generated or not.

== Description

#strong[markdown]; converts Markdown text-to-HTML.

 options:

 

- #strong[secure]; (default): only a subset of markdown is supported (no raw HTML, no tables, no images, no links).
- #strong[advanced];: full markdown supported (including raw HTML, tables, images, links).
== Examples

``````matlab
txt = {'## Example of Markdown text';
'>Nelson supports markdown ...'};
html = markdown(txt);
filewrite([tempdir(), 'markdown_example.html'], html)

if ispc()
  winopen([tempdir(), 'markdown_example.html']);
end
``````

``````matlab
txt = 'Hello <script>alert("XSS")</script> World';
advanced_html = markdown(txt, 'advanced')
secure_html = markdown(txt, 'secure')

``````


== See also

#nlink(<help_tools:htmltopdf>)[htmltopdf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], ['secure', 'advanced' modes added],
)

// Author: Allan CORNET
